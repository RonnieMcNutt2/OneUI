.class public final Landroid/media/MicrophoneInfo;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MicrophoneInfo$Coordinate3F;,
        Landroid/media/MicrophoneInfo$MicrophoneDirectionality;,
        Landroid/media/MicrophoneInfo$MicrophoneLocation;
    }
.end annotation


# static fields
.field public static final CHANNEL_MAPPING_DIRECT:I = 0x1

.field public static final CHANNEL_MAPPING_PROCESSED:I = 0x2

.field public static final DIRECTIONALITY_BI_DIRECTIONAL:I = 0x2

.field public static final DIRECTIONALITY_CARDIOID:I = 0x3

.field public static final DIRECTIONALITY_HYPER_CARDIOID:I = 0x4

.field public static final DIRECTIONALITY_OMNI:I = 0x1

.field public static final DIRECTIONALITY_SUPER_CARDIOID:I = 0x5

.field public static final DIRECTIONALITY_UNKNOWN:I = 0x0

.field public static final GROUP_UNKNOWN:I = -0x1

.field public static final INDEX_IN_THE_GROUP_UNKNOWN:I = -0x1

.field public static final LOCATION_MAINBODY:I = 0x1

.field public static final LOCATION_MAINBODY_MOVABLE:I = 0x2

.field public static final LOCATION_PERIPHERAL:I = 0x3

.field public static final LOCATION_UNKNOWN:I = 0x0

.field public static final ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

.field public static final POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

.field public static final SENSITIVITY_UNKNOWN:F = -3.4028235E38f

.field public static final SPL_UNKNOWN:F = -3.4028235E38f


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mChannelMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mDirectionality:I

.field private mFrequencyResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGroup:I

.field private mIndexInTheGroup:I

.field private mLocation:I

.field private mMaxSpl:F

.field private mMinSpl:F

.field private mOrientation:Landroid/media/MicrophoneInfo$Coordinate3F;

.field private mPortId:I

.field private mPosition:Landroid/media/MicrophoneInfo$Coordinate3F;

.field private mSensitivity:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 111
    new-instance v0, Landroid/media/MicrophoneInfo$Coordinate3F;

    const v1, -0x800001

    invoke-direct {v0, v1, v1, v1}, Landroid/media/MicrophoneInfo$Coordinate3F;-><init>(FFF)V

    sput-object v0, Landroid/media/MicrophoneInfo;->POSITION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 117
    new-instance v0, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/media/MicrophoneInfo$Coordinate3F;-><init>(FFF)V

    sput-object v0, Landroid/media/MicrophoneInfo;->ORIENTATION_UNKNOWN:Landroid/media/MicrophoneInfo$Coordinate3F;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/media/MicrophoneInfo$Coordinate3F;Landroid/media/MicrophoneInfo$Coordinate3F;Ljava/util/List;Ljava/util/List;FFFI)V
    .registers 15
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "location"    # I
    .param p5, "group"    # I
    .param p6, "indexInTheGroup"    # I
    .param p7, "position"    # Landroid/media/MicrophoneInfo$Coordinate3F;
    .param p8, "orientation"    # Landroid/media/MicrophoneInfo$Coordinate3F;
    .param p11, "sensitivity"    # F
    .param p12, "maxSpl"    # F
    .param p13, "minSpl"    # F
    .param p14, "directionality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "III",
            "Landroid/media/MicrophoneInfo$Coordinate3F;",
            "Landroid/media/MicrophoneInfo$Coordinate3F;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;FFFI)V"
        }
    .end annotation

    .line 173
    .local p9, "frequencyResponse":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;>;"
    .local p10, "channelMapping":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroid/media/MicrophoneInfo;->mDeviceId:Ljava/lang/String;

    .line 175
    iput p2, p0, Landroid/media/MicrophoneInfo;->mType:I

    .line 176
    iput-object p3, p0, Landroid/media/MicrophoneInfo;->mAddress:Ljava/lang/String;

    .line 177
    iput p4, p0, Landroid/media/MicrophoneInfo;->mLocation:I

    .line 178
    iput p5, p0, Landroid/media/MicrophoneInfo;->mGroup:I

    .line 179
    iput p6, p0, Landroid/media/MicrophoneInfo;->mIndexInTheGroup:I

    .line 180
    iput-object p7, p0, Landroid/media/MicrophoneInfo;->mPosition:Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 181
    iput-object p8, p0, Landroid/media/MicrophoneInfo;->mOrientation:Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 182
    iput-object p9, p0, Landroid/media/MicrophoneInfo;->mFrequencyResponse:Ljava/util/List;

    .line 183
    iput-object p10, p0, Landroid/media/MicrophoneInfo;->mChannelMapping:Ljava/util/List;

    .line 184
    iput p11, p0, Landroid/media/MicrophoneInfo;->mSensitivity:F

    .line 185
    iput p12, p0, Landroid/media/MicrophoneInfo;->mMaxSpl:F

    .line 186
    iput p13, p0, Landroid/media/MicrophoneInfo;->mMinSpl:F

    .line 187
    iput p14, p0, Landroid/media/MicrophoneInfo;->mDirectionality:I

    .line 188
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelMapping()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mChannelMapping:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionality()I
    .registers 2

    .line 361
    iget v0, p0, Landroid/media/MicrophoneInfo;->mDirectionality:I

    return v0
.end method

.method public getFrequencyResponse()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mFrequencyResponse:Ljava/util/List;

    return-object v0
.end method

.method public getGroup()I
    .registers 2

    .line 257
    iget v0, p0, Landroid/media/MicrophoneInfo;->mGroup:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/media/MicrophoneInfo;->mPortId:I

    return v0
.end method

.method public getIndexInTheGroup()I
    .registers 2

    .line 267
    iget v0, p0, Landroid/media/MicrophoneInfo;->mIndexInTheGroup:I

    return v0
.end method

.method public getInternalDeviceType()I
    .registers 2

    .line 218
    iget v0, p0, Landroid/media/MicrophoneInfo;->mType:I

    return v0
.end method

.method public getLocation()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/media/MicrophoneInfo;->mLocation:I

    return v0
.end method

.method public getMaxSpl()F
    .registers 2

    .line 340
    iget v0, p0, Landroid/media/MicrophoneInfo;->mMaxSpl:F

    return v0
.end method

.method public getMinSpl()F
    .registers 2

    .line 349
    iget v0, p0, Landroid/media/MicrophoneInfo;->mMinSpl:F

    return v0
.end method

.method public getOrientation()Landroid/media/MicrophoneInfo$Coordinate3F;
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mOrientation:Landroid/media/MicrophoneInfo$Coordinate3F;

    return-object v0
.end method

.method public getPosition()Landroid/media/MicrophoneInfo$Coordinate3F;
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/media/MicrophoneInfo;->mPosition:Landroid/media/MicrophoneInfo$Coordinate3F;

    return-object v0
.end method

.method public getSensitivity()F
    .registers 2

    .line 331
    iget v0, p0, Landroid/media/MicrophoneInfo;->mSensitivity:F

    return v0
.end method

.method public getType()I
    .registers 2

    .line 227
    iget v0, p0, Landroid/media/MicrophoneInfo;->mType:I

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v0

    return v0
.end method

.method public setChannelMapping(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 377
    .local p1, "channelMapping":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iput-object p1, p0, Landroid/media/MicrophoneInfo;->mChannelMapping:Ljava/util/List;

    .line 378
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "portId"    # I

    .line 369
    iput p1, p0, Landroid/media/MicrophoneInfo;->mPortId:I

    .line 370
    return-void
.end method
