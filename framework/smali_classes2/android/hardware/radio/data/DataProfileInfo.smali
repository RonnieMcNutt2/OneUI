.class public Landroid/hardware/radio/data/DataProfileInfo;
.super Ljava/lang/Object;
.source "DataProfileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/data/DataProfileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID_CBS:I = 0x4

.field public static final ID_DEFAULT:I = 0x0

.field public static final ID_FOTA:I = 0x3

.field public static final ID_IMS:I = 0x2

.field public static final ID_INVALID:I = -0x1

.field public static final ID_OEM_BASE:I = 0x3e8

.field public static final ID_TETHERED:I = 0x1

.field public static final TYPE_3GPP:I = 0x1

.field public static final TYPE_3GPP2:I = 0x2

.field public static final TYPE_COMMON:I


# instance fields
.field public alwaysOn:Z

.field public apn:Ljava/lang/String;

.field public authType:I

.field public bearerBitmap:I

.field public enabled:Z

.field public maxConns:I

.field public maxConnsTime:I

.field public mtuV4:I

.field public mtuV6:I

.field public password:Ljava/lang/String;

.field public persistent:Z

.field public preferred:Z

.field public profileId:I

.field public protocol:I

.field public roamingProtocol:I

.field public supportedApnTypesBitmap:I

.field public trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

.field public type:I

.field public user:Ljava/lang/String;

.field public waitTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/hardware/radio/data/DataProfileInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/data/DataProfileInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    .line 14
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 15
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 16
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 17
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 18
    iput-boolean v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 19
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 20
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 21
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 22
    iput v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 23
    iput-boolean v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    .line 24
    iput-boolean v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 25
    iput-boolean v0, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 166
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 169
    :cond_10
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/DataProfileInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 162
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 73
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_256

    .line 76
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 118
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 118
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 118
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 82
    return-void

    .line 118
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    return-void

    .line 118
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 86
    return-void

    .line 118
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    return-void

    .line 118
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 118
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 118
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 118
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 118
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_148
    .catchall {:try_start_13e .. :try_end_148} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15a

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_154

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 118
    :cond_154
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_15a
    :try_start_15a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_164
    .catchall {:try_start_15a .. :try_end_164} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_176

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_170

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 118
    :cond_170
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_176
    :try_start_176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_180
    .catchall {:try_start_176 .. :try_end_180} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_192

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18c

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 118
    :cond_18c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_192
    :try_start_192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_19c
    .catchall {:try_start_192 .. :try_end_19c} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ae

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a8

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 118
    :cond_1a8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_1ae
    :try_start_1ae
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1b8
    .catchall {:try_start_1ae .. :try_end_1b8} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ca

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c4

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 118
    :cond_1c4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_1ca
    :try_start_1ca
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1d4
    .catchall {:try_start_1ca .. :try_end_1d4} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1e6

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e0

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 118
    :cond_1e0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1e6
    :try_start_1e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1f0
    .catchall {:try_start_1e6 .. :try_end_1f0} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_202

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1fc

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 110
    return-void

    .line 118
    :cond_1fc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_202
    :try_start_202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_20c
    .catchall {:try_start_202 .. :try_end_20c} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_21e

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_218

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    return-void

    .line 118
    :cond_218
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_21e
    :try_start_21e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_228
    .catchall {:try_start_21e .. :try_end_228} :catchall_254

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_23a

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_234

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 114
    return-void

    .line 118
    :cond_234
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_23a
    :try_start_23a
    sget-object v2, Landroid/hardware/radio/data/TrafficDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/data/TrafficDescriptor;

    iput-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;
    :try_end_244
    .catchall {:try_start_23a .. :try_end_244} :catchall_254

    .line 117
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_24e

    .line 120
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    nop

    .line 122
    return-void

    .line 118
    :cond_24e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :catchall_254
    move-exception v2

    goto :goto_25e

    .line 75
    :cond_256
    :try_start_256
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/radio/data/DataProfileInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_25e
    .catchall {:try_start_256 .. :try_end_25e} :catchall_254

    .line 117
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/radio/data/DataProfileInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_25e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_267

    .line 118
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_267
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 135
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 136
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profileId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    invoke-static {v2}, Landroid/hardware/radio/data/PdpProtocolType$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roamingProtocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    invoke-static {v2}, Landroid/hardware/radio/data/PdpProtocolType$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    invoke-static {v2}, Landroid/hardware/radio/data/ApnAuthType$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConnsTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supportedApnTypesBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bearerBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtuV4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mtuV6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preferred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alwaysOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trafficDescriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.DataProfileInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 44
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->profileId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->protocol:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->roamingProtocol:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->authType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConnsTime:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->maxConns:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->waitTime:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->enabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 57
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->bearerBitmap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV4:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->mtuV6:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->preferred:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->persistent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 63
    iget-boolean v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->alwaysOn:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 64
    iget-object v1, p0, Landroid/hardware/radio/data/DataProfileInfo;->trafficDescriptor:Landroid/hardware/radio/data/TrafficDescriptor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 66
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void
.end method
