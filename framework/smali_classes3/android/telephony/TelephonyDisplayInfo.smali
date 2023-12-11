.class public final Landroid/telephony/TelephonyDisplayInfo;
.super Ljava/lang/Object;
.source "TelephonyDisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/TelephonyDisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERRIDE_NETWORK_TYPE_LTE_ADVANCED_PRO:I = 0x2

.field public static final OVERRIDE_NETWORK_TYPE_LTE_CA:I = 0x1

.field public static final OVERRIDE_NETWORK_TYPE_NONE:I = 0x0

.field public static final OVERRIDE_NETWORK_TYPE_NR_ADVANCED:I = 0x5

.field public static final OVERRIDE_NETWORK_TYPE_NR_NSA:I = 0x3

.field public static final OVERRIDE_NETWORK_TYPE_NR_NSA_MMWAVE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private m5gAvailable:Z

.field private final mIsRoaming:Z

.field private final mNetworkType:I

.field private final mOverrideNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 205
    new-instance v0, Landroid/telephony/TelephonyDisplayInfo$1;

    invoke-direct {v0}, Landroid/telephony/TelephonyDisplayInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyDisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "overrideNetworkType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/TelephonyDisplayInfo;-><init>(IIZ)V

    .line 114
    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4
    .param p1, "networkType"    # I
    .param p2, "overrideNetworkType"    # I
    .param p3, "isRoaming"    # Z

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 129
    iput p2, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 130
    iput-boolean p3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcel;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    .line 141
    return-void
.end method

.method public static overrideNetworkTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 247
    packed-switch p0, :pswitch_data_18

    .line 254
    const-string v0, "UNKNOWN"

    return-object v0

    .line 253
    :pswitch_6
    const-string v0, "NR_ADVANCED"

    return-object v0

    .line 252
    :pswitch_9
    const-string v0, "NR_NSA_MMWAVE"

    return-object v0

    .line 251
    :pswitch_c
    const-string v0, "NR_NSA"

    return-object v0

    .line 250
    :pswitch_f
    const-string v0, "LTE_ADV_PRO"

    return-object v0

    .line 249
    :pswitch_12
    const-string v0, "LTE_CA"

    return-object v0

    .line 248
    :pswitch_15
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 225
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 226
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 227
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/TelephonyDisplayInfo;

    .line 228
    .local v2, "that":Landroid/telephony/TelephonyDisplayInfo;
    iget v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    iget v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    iget v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    if-ne v3, v4, :cond_2e

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    iget-boolean v4, v2, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    if-ne v3, v4, :cond_2e

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    iget-boolean v4, v2, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    if-ne v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    return v0

    .line 226
    .end local v2    # "that":Landroid/telephony/TelephonyDisplayInfo;
    :cond_30
    :goto_30
    return v1
.end method

.method public getNetworkType()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    return v0
.end method

.method public getOverrideNetworkType()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 236
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public is5gAvailable()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    return v0
.end method

.method public isRoaming()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    return v0
.end method

.method public set5gAvailable(Z)V
    .registers 2
    .param p1, "avail"    # Z

    .line 178
    iput-boolean p1, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyDisplayInfo {network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overrideNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    .line 261
    invoke-static {v1}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 197
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mOverrideNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->m5gAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 202
    iget-boolean v0, p0, Landroid/telephony/TelephonyDisplayInfo;->mIsRoaming:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    return-void
.end method
