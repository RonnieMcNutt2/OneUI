.class public Lvendor/samsung/hardware/radio/sim/SehCardStatus;
.super Ljava/lang/Object;
.source "SehCardStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/samsung/hardware/radio/sim/SehCardStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

.field public atr:Ljava/lang/String;

.field public cardState:I

.field public cdmaSubscriptionAppIndex:I

.field public eid:Ljava/lang/String;

.field public gsmUmtsSubscriptionAppIndex:I

.field public iccid:Ljava/lang/String;

.field public imsSubscriptionAppIndex:I

.field public slotMap:Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;

.field public supportedMepMode:I

.field public universalPinState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lvendor/samsung/hardware/radio/sim/SehCardStatus$1;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/sim/SehCardStatus$1;-><init>()V

    sput-object v0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    .line 15
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 25
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    .line 60
    iput v0, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->supportedMepMode:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 138
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 139
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 142
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 141
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 144
    :cond_19
    return v1

    .line 146
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 147
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 149
    :cond_26
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    invoke-direct {p0, v1}, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 134
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;

    invoke-direct {p0, v1}, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 135
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 98
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_15e

    .line 101
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 101
    return-void

    .line 125
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 103
    return-void

    .line 125
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->universalPinState:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    return-void

    .line 125
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 107
    return-void

    .line 125
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    return-void

    .line 125
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 111
    return-void

    .line 125
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_b2
    :try_start_b2
    sget-object v2, Lvendor/samsung/hardware/radio/sim/SehAppStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 113
    return-void

    .line 125
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->atr:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ee

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e8

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    return-void

    .line 125
    :cond_e8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_ee
    :try_start_ee
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->iccid:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_10a

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_104

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    return-void

    .line 125
    :cond_104
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_10a
    :try_start_10a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->eid:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_114
    .catchall {:try_start_10a .. :try_end_114} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_126

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_120

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    return-void

    .line 125
    :cond_120
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_126
    :try_start_126
    sget-object v2, Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;

    iput-object v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_134
    .catchall {:try_start_126 .. :try_end_134} :catchall_15c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_146

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_140

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 121
    return-void

    .line 125
    :cond_140
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_146
    :try_start_146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->supportedMepMode:I
    :try_end_14c
    .catchall {:try_start_146 .. :try_end_14c} :catchall_15c

    .line 124
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_156

    .line 127
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    nop

    .line 129
    return-void

    .line 125
    :cond_156
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :catchall_15c
    move-exception v2

    goto :goto_166

    .line 100
    :cond_15e
    :try_start_15e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lvendor/samsung/hardware/radio/sim/SehCardStatus;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_166
    .catchall {:try_start_15e .. :try_end_166} :catchall_15c

    .line 124
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/sim/SehCardStatus;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_166
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_16f

    .line 125
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_16f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 128
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 78
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cardState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->universalPinState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->cdmaSubscriptionAppIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->imsSubscriptionAppIndex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->applications:[Lvendor/samsung/hardware/radio/sim/SehAppStatus;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 85
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->atr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->iccid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->eid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->slotMap:Lvendor/samsung/hardware/radio/sim/SehSlotPortMapping;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    iget v1, p0, Lvendor/samsung/hardware/radio/sim/SehCardStatus;->supportedMepMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 91
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void
.end method
