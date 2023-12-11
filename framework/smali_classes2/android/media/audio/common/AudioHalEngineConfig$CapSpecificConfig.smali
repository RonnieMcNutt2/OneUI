.class public Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
.super Ljava/lang/Object;
.source "AudioHalEngineConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalEngineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CapSpecificConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

.field public criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 162
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 165
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 164
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 167
    :cond_19
    return v1

    .line 169
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 170
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 172
    :cond_26
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 157
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    invoke-direct {p0, v1}, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 158
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 139
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_62

    .line 142
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_60

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 150
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 142
    return-void

    .line 148
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_26
    :try_start_26
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterion;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_60

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 150
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 144
    return-void

    .line 148
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_46
    :try_start_46
    sget-object v2, Landroid/media/audio/common/AudioHalCapCriterionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioHalCapCriterionType;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_60

    .line 147
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5a

    .line 150
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    nop

    .line 152
    return-void

    .line 148
    :cond_5a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :catchall_60
    move-exception v2

    goto :goto_6a

    .line 141
    :cond_62
    :try_start_62
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_60

    .line 147
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_6a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_73

    .line 148
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_73
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 151
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 128
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criteria:[Landroid/media/audio/common/AudioHalCapCriterion;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 130
    iget-object v1, p0, Landroid/media/audio/common/AudioHalEngineConfig$CapSpecificConfig;->criterionTypes:[Landroid/media/audio/common/AudioHalCapCriterionType;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 132
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 133
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 135
    return-void
.end method
