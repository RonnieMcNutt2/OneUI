.class public final Landroid/companion/virtual/sensor/VirtualSensorConfig;
.super Ljava/lang/Object;
.source "VirtualSensorConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/VirtualSensorConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtual/sensor/VirtualSensorConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "VirtualSensorConfig"


# instance fields
.field private final mFlags:I

.field private final mMaxDelay:I

.field private final mMaximumRange:F

.field private final mMinDelay:I

.field private final mName:Ljava/lang/String;

.field private final mPower:F

.field private final mResolution:F

.field private final mType:I

.field private final mVendor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 380
    new-instance v0, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;

    invoke-direct {v0}, Landroid/companion/virtual/sensor/VirtualSensorConfig$1;-><init>()V

    sput-object v0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vendor"    # Ljava/lang/String;
    .param p4, "maximumRange"    # F
    .param p5, "resolution"    # F
    .param p6, "power"    # F
    .param p7, "minDelay"    # I
    .param p8, "maxDelay"    # I
    .param p9, "flags"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    .line 67
    iput-object p2, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    .line 69
    iput p4, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    .line 70
    iput p5, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    .line 71
    iput p6, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    .line 72
    iput p7, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    .line 73
    iput p8, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    .line 74
    iput p9, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    .line 75
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;FFFIIILandroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(ILjava/lang/String;Ljava/lang/String;FFFIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/companion/virtual/sensor/VirtualSensorConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/virtual/sensor/VirtualSensorConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getDirectChannelTypesSupported()I
    .registers 4

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "memoryTypes":I
    iget v1, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v2, v1, 0x400

    if-lez v2, :cond_9

    .line 202
    or-int/lit8 v0, v0, 0x1

    .line 204
    :cond_9
    and-int/lit16 v1, v1, 0x800

    if-lez v1, :cond_f

    .line 205
    or-int/lit8 v0, v0, 0x2

    .line 207
    :cond_f
    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    return v0
.end method

.method public getHighestDirectReportRateLevel()I
    .registers 3

    .line 188
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    and-int/lit16 v0, v0, 0x380

    shr-int/lit8 v0, v0, 0x7

    .line 189
    .local v0, "rateLevel":I
    const/4 v1, 0x3

    if-gt v0, v1, :cond_b

    .line 190
    move v1, v0

    goto :goto_c

    :cond_b
    nop

    .line 189
    :goto_c
    return v1
.end method

.method public getMaxDelay()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .registers 2

    .line 141
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    .line 169
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    .line 159
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    return v0
.end method

.method public getResolution()F
    .registers 2

    .line 150
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    return v0
.end method

.method public getType()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaximumRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 100
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mResolution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 101
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 102
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMinDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mMaxDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/companion/virtual/sensor/VirtualSensorConfig;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
