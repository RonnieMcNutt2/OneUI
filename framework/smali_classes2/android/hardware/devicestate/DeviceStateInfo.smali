.class public final Landroid/hardware/devicestate/DeviceStateInfo;
.super Ljava/lang/Object;
.source "DeviceStateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateInfo$ChangeFlags;
    }
.end annotation


# static fields
.field public static final CHANGED_BASE_STATE:I = 0x2

.field public static final CHANGED_CURRENT_STATE:I = 0x4

.field public static final CHANGED_SUPPORTED_STATES:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/devicestate/DeviceStateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final baseState:I

.field public final currentState:I

.field public final supportedStates:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 143
    new-instance v0, Landroid/hardware/devicestate/DeviceStateInfo$1;

    invoke-direct {v0}, Landroid/hardware/devicestate/DeviceStateInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/devicestate/DeviceStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 90
    iget-object v0, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iget v1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iget v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    .line 92
    return-void
.end method

.method public constructor <init>([III)V
    .registers 4
    .param p1, "supportedStates"    # [I
    .param p2, "baseState"    # I
    .param p3, "state"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    .line 81
    iput p2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    .line 82
    iput p3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/hardware/devicestate/DeviceStateInfo;)I
    .registers 5
    .param p1, "other"    # Landroid/hardware/devicestate/DeviceStateInfo;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "diff":I
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 116
    or-int/lit8 v0, v0, 0x1

    .line 118
    :cond_d
    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iget v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    if-eq v1, v2, :cond_15

    .line 119
    or-int/lit8 v0, v0, 0x2

    .line 121
    :cond_15
    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    iget v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    if-eq v1, v2, :cond_1d

    .line 122
    or-int/lit8 v0, v0, 0x4

    .line 124
    :cond_1d
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 98
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/hardware/devicestate/DeviceStateInfo;

    .line 99
    .local v2, "that":Landroid/hardware/devicestate/DeviceStateInfo;
    iget v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    iget v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    if-ne v3, v4, :cond_2c

    iget v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    iget v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    iget-object v4, v2, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    .line 101
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 99
    :goto_2d
    return v0

    .line 97
    .end local v2    # "that":Landroid/hardware/devicestate/DeviceStateInfo;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 106
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 108
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Landroid/hardware/devicestate/DeviceStateInfo;->supportedStates:[I

    array-length v2, v1

    if-ge v0, v2, :cond_14

    .line 131
    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 134
    .end local v0    # "i":I
    :cond_14
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->baseState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
