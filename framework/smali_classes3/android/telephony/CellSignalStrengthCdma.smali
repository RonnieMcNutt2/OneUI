.class public final Landroid/telephony/CellSignalStrengthCdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthCdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellSignalStrengthCdma"

.field private static final sInvalid:Landroid/telephony/CellSignalStrengthCdma;


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 387
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    .line 460
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->setDefaultValues()V

    .line 46
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 10
    .param p1, "cdmaDbm"    # I
    .param p2, "cdmaEcio"    # I
    .param p3, "evdoDbm"    # I
    .param p4, "evdoEcio"    # I
    .param p5, "evdoSnr"    # I

    .line 70
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 71
    const/16 v0, -0x78

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 72
    const/16 v2, -0xa0

    invoke-static {p2, v2, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v3

    iput v3, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 73
    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 74
    invoke-static {p4, v2, v1}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 75
    const/16 v0, 0x8

    invoke-static {p5, v1, v0}, Landroid/telephony/CellSignalStrengthCdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 439
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 81
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma;->copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V

    .line 83
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 477
    const-string v0, "CellSignalStrengthCdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Landroid/telephony/CellSignalStrength;
    .registers 2

    .line 31
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->copy()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/telephony/CellSignalStrengthCdma;
    .registers 2

    .line 98
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0
.end method

.method protected copyFrom(Landroid/telephony/CellSignalStrengthCdma;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthCdma;

    .line 87
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 88
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 89
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 90
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 91
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 92
    iget v0, p1, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 93
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthCdma;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 399
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    .line 401
    .local v0, "s":Landroid/telephony/CellSignalStrengthCdma;
    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    if-ne v2, v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public getAsuLevel()I
    .registers 7

    .line 167
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 168
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 172
    .local v1, "cdmaEcio":I
    const/16 v2, -0x64

    const/16 v3, -0x5a

    const v4, 0x7fffffff

    if-ne v0, v4, :cond_14

    const/16 v5, 0x63

    .local v5, "cdmaAsuLevel":I
    goto :goto_32

    .line 173
    .end local v5    # "cdmaAsuLevel":I
    :cond_14
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1b

    const/16 v5, 0x10

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 174
    .end local v5    # "cdmaAsuLevel":I
    :cond_1b
    const/16 v5, -0x52

    if-lt v0, v5, :cond_22

    const/16 v5, 0x8

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 175
    .end local v5    # "cdmaAsuLevel":I
    :cond_22
    if-lt v0, v3, :cond_26

    const/4 v5, 0x4

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 176
    .end local v5    # "cdmaAsuLevel":I
    :cond_26
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2c

    const/4 v5, 0x2

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 177
    .end local v5    # "cdmaAsuLevel":I
    :cond_2c
    if-lt v0, v2, :cond_30

    const/4 v5, 0x1

    .restart local v5    # "cdmaAsuLevel":I
    goto :goto_32

    .line 178
    .end local v5    # "cdmaAsuLevel":I
    :cond_30
    const/16 v5, 0x63

    .line 181
    .restart local v5    # "cdmaAsuLevel":I
    :goto_32
    if-ne v1, v4, :cond_37

    const/16 v2, 0x63

    .local v2, "ecioAsuLevel":I
    goto :goto_55

    .line 182
    .end local v2    # "ecioAsuLevel":I
    :cond_37
    if-lt v1, v3, :cond_3c

    const/16 v2, 0x10

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 183
    .end local v2    # "ecioAsuLevel":I
    :cond_3c
    if-lt v1, v2, :cond_41

    const/16 v2, 0x8

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 184
    .end local v2    # "ecioAsuLevel":I
    :cond_41
    const/16 v2, -0x73

    if-lt v1, v2, :cond_47

    const/4 v2, 0x4

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 185
    .end local v2    # "ecioAsuLevel":I
    :cond_47
    const/16 v2, -0x82

    if-lt v1, v2, :cond_4d

    const/4 v2, 0x2

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 186
    .end local v2    # "ecioAsuLevel":I
    :cond_4d
    const/16 v2, -0x96

    if-lt v1, v2, :cond_53

    const/4 v2, 0x1

    .restart local v2    # "ecioAsuLevel":I
    goto :goto_55

    .line 187
    .end local v2    # "ecioAsuLevel":I
    :cond_53
    const/16 v2, 0x63

    .line 189
    .restart local v2    # "ecioAsuLevel":I
    :goto_55
    if-ge v5, v2, :cond_59

    move v3, v5

    goto :goto_5a

    :cond_59
    move v3, v2

    .line 191
    .local v3, "level":I
    :goto_5a
    return v3
.end method

.method public getCdmaDbm()I
    .registers 2

    .line 326
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    .line 338
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 6

    .line 198
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 199
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v1

    .line 203
    .local v1, "cdmaEcio":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_f

    const/4 v3, 0x0

    .local v3, "levelDbm":I
    goto :goto_28

    .line 204
    .end local v3    # "levelDbm":I
    :cond_f
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_15

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 205
    .end local v3    # "levelDbm":I
    :cond_15
    const/16 v3, -0x55

    if-lt v0, v3, :cond_1b

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 206
    .end local v3    # "levelDbm":I
    :cond_1b
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_21

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 207
    .end local v3    # "levelDbm":I
    :cond_21
    const/16 v3, -0x64

    if-lt v0, v3, :cond_27

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_28

    .line 208
    .end local v3    # "levelDbm":I
    :cond_27
    const/4 v3, 0x0

    .line 211
    .restart local v3    # "levelDbm":I
    :goto_28
    if-ne v1, v2, :cond_2c

    const/4 v2, 0x0

    .local v2, "levelEcio":I
    goto :goto_45

    .line 212
    .end local v2    # "levelEcio":I
    :cond_2c
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_32

    const/4 v2, 0x4

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 213
    .end local v2    # "levelEcio":I
    :cond_32
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_38

    const/4 v2, 0x3

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 214
    .end local v2    # "levelEcio":I
    :cond_38
    const/16 v2, -0x82

    if-lt v1, v2, :cond_3e

    const/4 v2, 0x2

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 215
    .end local v2    # "levelEcio":I
    :cond_3e
    const/16 v2, -0x96

    if-lt v1, v2, :cond_44

    const/4 v2, 0x1

    .restart local v2    # "levelEcio":I
    goto :goto_45

    .line 216
    .end local v2    # "levelEcio":I
    :cond_44
    const/4 v2, 0x0

    .line 218
    .restart local v2    # "levelEcio":I
    :goto_45
    if-ge v3, v2, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    .line 220
    .local v4, "level":I
    :goto_4a
    return v4
.end method

.method public getDbm()I
    .registers 4

    .line 315
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v0

    .line 316
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v1

    .line 319
    .local v1, "evdoDbm":I
    if-ge v0, v1, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    return v2
.end method

.method public getEvdoAsuLevel()I
    .registers 6

    .line 284
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 285
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 289
    .local v1, "evdoSnr":I
    const/16 v2, -0x41

    if-lt v0, v2, :cond_f

    const/16 v2, 0x10

    .local v2, "levelEvdoDbm":I
    goto :goto_2a

    .line 290
    .end local v2    # "levelEvdoDbm":I
    :cond_f
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_16

    const/16 v2, 0x8

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 291
    .end local v2    # "levelEvdoDbm":I
    :cond_16
    const/16 v2, -0x55

    if-lt v0, v2, :cond_1c

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 292
    .end local v2    # "levelEvdoDbm":I
    :cond_1c
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_22

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 293
    .end local v2    # "levelEvdoDbm":I
    :cond_22
    const/16 v2, -0x69

    if-lt v0, v2, :cond_28

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoDbm":I
    goto :goto_2a

    .line 294
    .end local v2    # "levelEvdoDbm":I
    :cond_28
    const/16 v2, 0x63

    .line 296
    .restart local v2    # "levelEvdoDbm":I
    :goto_2a
    const/4 v3, 0x7

    if-lt v1, v3, :cond_30

    const/16 v3, 0x10

    .local v3, "levelEvdoSnr":I
    goto :goto_47

    .line 297
    .end local v3    # "levelEvdoSnr":I
    :cond_30
    const/4 v3, 0x6

    if-lt v1, v3, :cond_36

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 298
    .end local v3    # "levelEvdoSnr":I
    :cond_36
    const/4 v3, 0x5

    if-lt v1, v3, :cond_3b

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 299
    .end local v3    # "levelEvdoSnr":I
    :cond_3b
    const/4 v3, 0x3

    if-lt v1, v3, :cond_40

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 300
    .end local v3    # "levelEvdoSnr":I
    :cond_40
    const/4 v3, 0x1

    if-lt v1, v3, :cond_45

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoSnr":I
    goto :goto_47

    .line 301
    .end local v3    # "levelEvdoSnr":I
    :cond_45
    const/16 v3, 0x63

    .line 303
    .restart local v3    # "levelEvdoSnr":I
    :goto_47
    if-ge v2, v3, :cond_4b

    move v4, v2

    goto :goto_4c

    :cond_4b
    move v4, v3

    .line 305
    .local v4, "level":I
    :goto_4c
    return v4
.end method

.method public getEvdoDbm()I
    .registers 2

    .line 350
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    .line 362
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 6

    .line 227
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v0

    .line 228
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v1

    .line 232
    .local v1, "evdoSnr":I
    const v2, 0x7fffffff

    if-ne v0, v2, :cond_f

    const/4 v3, 0x0

    .local v3, "levelEvdoDbm":I
    goto :goto_28

    .line 233
    .end local v3    # "levelEvdoDbm":I
    :cond_f
    const/16 v3, -0x41

    if-lt v0, v3, :cond_15

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 234
    .end local v3    # "levelEvdoDbm":I
    :cond_15
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1b

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 235
    .end local v3    # "levelEvdoDbm":I
    :cond_1b
    const/16 v3, -0x5a

    if-lt v0, v3, :cond_21

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 236
    .end local v3    # "levelEvdoDbm":I
    :cond_21
    const/16 v3, -0x69

    if-lt v0, v3, :cond_27

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_28

    .line 237
    .end local v3    # "levelEvdoDbm":I
    :cond_27
    const/4 v3, 0x0

    .line 239
    .restart local v3    # "levelEvdoDbm":I
    :goto_28
    if-ne v1, v2, :cond_2c

    const/4 v2, 0x0

    .local v2, "levelEvdoSnr":I
    goto :goto_41

    .line 240
    .end local v2    # "levelEvdoSnr":I
    :cond_2c
    const/4 v2, 0x7

    if-lt v1, v2, :cond_31

    const/4 v2, 0x4

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 241
    .end local v2    # "levelEvdoSnr":I
    :cond_31
    const/4 v2, 0x5

    if-lt v1, v2, :cond_36

    const/4 v2, 0x3

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 242
    .end local v2    # "levelEvdoSnr":I
    :cond_36
    const/4 v2, 0x3

    if-lt v1, v2, :cond_3b

    const/4 v2, 0x2

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 243
    .end local v2    # "levelEvdoSnr":I
    :cond_3b
    const/4 v2, 0x1

    if-lt v1, v2, :cond_40

    const/4 v2, 0x1

    .restart local v2    # "levelEvdoSnr":I
    goto :goto_41

    .line 244
    .end local v2    # "levelEvdoSnr":I
    :cond_40
    const/4 v2, 0x0

    .line 246
    .restart local v2    # "levelEvdoSnr":I
    :goto_41
    if-ge v3, v2, :cond_45

    move v4, v3

    goto :goto_46

    :cond_45
    move v4, v2

    .line 248
    .local v4, "level":I
    :goto_46
    return v4
.end method

.method public getEvdoSnr()I
    .registers 2

    .line 374
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    return v0
.end method

.method public getLevel()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    return v0
.end method

.method public hashCode()I
    .registers 8

    .line 384
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 392
    sget-object v0, Landroid/telephony/CellSignalStrengthCdma;->sInvalid:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCdmaDbm(I)V
    .registers 2
    .param p1, "cdmaDbm"    # I

    .line 331
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 332
    return-void
.end method

.method public setCdmaEcio(I)V
    .registers 2
    .param p1, "cdmaEcio"    # I

    .line 343
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 344
    return-void
.end method

.method public setDefaultValues()V
    .registers 2

    .line 104
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    .line 105
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    .line 106
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 107
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 108
    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 110
    return-void
.end method

.method public setEvdoDbm(I)V
    .registers 2
    .param p1, "evdoDbm"    # I

    .line 355
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    .line 356
    return-void
.end method

.method public setEvdoEcio(I)V
    .registers 2
    .param p1, "evdoEcio"    # I

    .line 367
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    .line 368
    return-void
.end method

.method public setEvdoSnr(I)V
    .registers 2
    .param p1, "evdoSnr"    # I

    .line 379
    iput p1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    .line 380
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthCdma: cdmaDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cdmaEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoDbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoEcio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " evdoSnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .registers 6
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 122
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v0

    .line 123
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v1

    .line 124
    .local v1, "evdoLevel":I
    if-nez v1, :cond_11

    .line 126
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_21

    .line 127
    :cond_11
    if-nez v0, :cond_1a

    .line 129
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result v2

    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    goto :goto_21

    .line 132
    :cond_1a
    if-ge v0, v1, :cond_1e

    move v2, v0

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput v2, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    .line 134
    :goto_21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 427
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget v0, p0, Landroid/telephony/CellSignalStrengthCdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    return-void
.end method
