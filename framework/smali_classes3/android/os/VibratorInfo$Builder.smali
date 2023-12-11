.class public final Landroid/os/VibratorInfo$Builder;
.super Ljava/lang/Object;
.source "VibratorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilities:J

.field private mCompositionSizeMax:I

.field private mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private final mId:I

.field private mPrimitiveDelayMax:I

.field private mPwlePrimitiveDurationMax:I

.field private mPwleSizeMax:I

.field private mQFactor:F

.field private mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1, "id"    # I

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 686
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    .line 687
    new-instance v1, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v0, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    iput-object v1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 692
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mId:I

    .line 693
    return-void
.end method

.method private static toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .registers 6
    .param p0, "supportedKeys"    # [I

    .line 780
    if-nez p0, :cond_4

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 783
    :cond_4
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 784
    .local v0, "array":Landroid/util/SparseBooleanArray;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 785
    .local v3, "key":I
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 784
    .end local v3    # "key":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 787
    :cond_16
    return-object v0
.end method


# virtual methods
.method public build()Landroid/os/VibratorInfo;
    .registers 15

    .line 768
    new-instance v13, Landroid/os/VibratorInfo;

    iget v1, p0, Landroid/os/VibratorInfo$Builder;->mId:I

    iget-wide v2, p0, Landroid/os/VibratorInfo$Builder;->mCapabilities:J

    iget-object v4, p0, Landroid/os/VibratorInfo$Builder;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, p0, Landroid/os/VibratorInfo$Builder;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v6, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iget v7, p0, Landroid/os/VibratorInfo$Builder;->mPrimitiveDelayMax:I

    iget v8, p0, Landroid/os/VibratorInfo$Builder;->mCompositionSizeMax:I

    iget v9, p0, Landroid/os/VibratorInfo$Builder;->mPwlePrimitiveDurationMax:I

    iget v10, p0, Landroid/os/VibratorInfo$Builder;->mPwleSizeMax:I

    iget v11, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    iget-object v12, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V

    return-object v13
.end method

.method public setCapabilities(J)Landroid/os/VibratorInfo$Builder;
    .registers 3
    .param p1, "capabilities"    # J

    .line 698
    iput-wide p1, p0, Landroid/os/VibratorInfo$Builder;->mCapabilities:J

    .line 699
    return-object p0
.end method

.method public setCompositionSizeMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "compositionSizeMax"    # I

    .line 747
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mCompositionSizeMax:I

    .line 748
    return-object p0
.end method

.method public setFrequencyProfile(Landroid/os/VibratorInfo$FrequencyProfile;)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;

    .line 761
    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 762
    return-object p0
.end method

.method public setPrimitiveDelayMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "primitiveDelayMax"    # I

    .line 740
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPrimitiveDelayMax:I

    .line 741
    return-object p0
.end method

.method public setPwlePrimitiveDurationMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "pwlePrimitiveDurationMax"    # I

    .line 719
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPwlePrimitiveDurationMax:I

    .line 720
    return-object p0
.end method

.method public setPwleSizeMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "pwleSizeMax"    # I

    .line 726
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPwleSizeMax:I

    .line 727
    return-object p0
.end method

.method public setQFactor(F)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "qFactor"    # F

    .line 754
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    .line 755
    return-object p0
.end method

.method public varargs setSupportedBraking([I)Landroid/os/VibratorInfo$Builder;
    .registers 3
    .param p1, "supportedBraking"    # [I

    .line 712
    invoke-static {p1}, Landroid/os/VibratorInfo$Builder;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 713
    return-object p0
.end method

.method public varargs setSupportedEffects([I)Landroid/os/VibratorInfo$Builder;
    .registers 3
    .param p1, "supportedEffects"    # [I

    .line 705
    invoke-static {p1}, Landroid/os/VibratorInfo$Builder;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 706
    return-object p0
.end method

.method public setSupportedPrimitive(II)Landroid/os/VibratorInfo$Builder;
    .registers 4
    .param p1, "primitiveId"    # I
    .param p2, "duration"    # I

    .line 733
    iget-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    return-object p0
.end method
