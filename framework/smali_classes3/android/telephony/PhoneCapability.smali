.class public final Landroid/telephony/PhoneCapability;
.super Ljava/lang/Object;
.source "PhoneCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneCapability$Builder;,
        Landroid/telephony/PhoneCapability$DeviceNrCapability;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhoneCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

.field public static final DEVICE_NR_CAPABILITY_NSA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DEVICE_NR_CAPABILITY_SA:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final mDeviceNrCapabilities:[I

.field private final mLogicalModemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxActiveDataSubscriptions:I

.field private final mMaxActiveVoiceSubscriptions:I

.field private final mNetworkValidationBeforeSwitchSupported:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceNrCapabilities(Landroid/telephony/PhoneCapability;)[I
    .registers 1

    iget-object p0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxActiveDataSubscriptions(Landroid/telephony/PhoneCapability;)I
    .registers 1

    iget p0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability;)I
    .registers 1

    iget p0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkValidationBeforeSwitchSupported(Landroid/telephony/PhoneCapability;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 76
    new-instance v0, Landroid/telephony/ModemInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    .line 77
    .local v0, "modemInfo1":Landroid/telephony/ModemInfo;
    new-instance v3, Landroid/telephony/ModemInfo;

    invoke-direct {v3, v2, v1, v2, v2}, Landroid/telephony/ModemInfo;-><init>(IIZZ)V

    move-object v2, v3

    .line 79
    .local v2, "modemInfo2":Landroid/telephony/ModemInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v3, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-array v1, v1, [I

    .line 84
    .local v1, "deviceNrCapabilities":[I
    new-instance v10, Landroid/telephony/PhoneCapability;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v7, v3

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v10, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 88
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v10, Landroid/telephony/PhoneCapability;

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Landroid/telephony/PhoneCapability;-><init>(IILjava/util/List;Z[I)V

    sput-object v10, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    .line 241
    .end local v0    # "modemInfo1":Landroid/telephony/ModemInfo;
    .end local v1    # "deviceNrCapabilities":[I
    .end local v2    # "modemInfo2":Landroid/telephony/ModemInfo;
    .end local v3    # "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    new-instance v0, Landroid/telephony/PhoneCapability$1;

    invoke-direct {v0}, Landroid/telephony/PhoneCapability$1;-><init>()V

    sput-object v0, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Z[I)V
    .registers 8
    .param p1, "maxActiveVoiceSubscriptions"    # I
    .param p2, "maxActiveDataSubscriptions"    # I
    .param p4, "networkValidationBeforeSwitchSupported"    # Z
    .param p5, "deviceNrCapabilities"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;Z[I)V"
        }
    .end annotation

    .line 141
    .local p3, "logicalModemList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ModemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 143
    iput p2, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 145
    if-nez p3, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_10

    :cond_f
    move-object v0, p3

    :goto_10
    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 147
    const-string v0, "XMO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 148
    iput-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    goto :goto_24

    .line 151
    :cond_22
    iput-boolean p4, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 153
    :goto_24
    iput-object p5, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 154
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 183
    .local v0, "temp":Z
    const-string v1, "XMO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 184
    iput-boolean v2, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    goto :goto_25

    .line 186
    :cond_23
    iput-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 189
    :goto_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 190
    const-class v2, Landroid/telephony/ModemInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/telephony/ModemInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 192
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/PhoneCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/PhoneCapability$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/PhoneCapability$Builder;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmMaxActiveVoiceSubscriptions(Landroid/telephony/PhoneCapability$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    .line 158
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmMaxActiveDataSubscriptions(Landroid/telephony/PhoneCapability$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 160
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1f

    .line 161
    :cond_1b
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmLogicalModemList(Landroid/telephony/PhoneCapability$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 162
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmNetworkValidationBeforeSwitchSupported(Landroid/telephony/PhoneCapability$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 164
    invoke-static {p1}, Landroid/telephony/PhoneCapability$Builder;->-$$Nest$fgetmDeviceNrCapabilities(Landroid/telephony/PhoneCapability$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Landroid/telephony/PhoneCapability$Builder;Landroid/telephony/PhoneCapability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhoneCapability;-><init>(Landroid/telephony/PhoneCapability$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x0

    if-eqz p1, :cond_43

    instance-of v1, p1, Landroid/telephony/PhoneCapability;

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_12

    goto :goto_43

    .line 209
    :cond_12
    const/4 v1, 0x1

    if-ne p0, p1, :cond_16

    .line 210
    return v1

    .line 213
    :cond_16
    move-object v2, p1

    check-cast v2, Landroid/telephony/PhoneCapability;

    .line 215
    .local v2, "s":Landroid/telephony/PhoneCapability;
    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    if-ne v3, v4, :cond_41

    iget v3, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    iget v4, v2, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    if-ne v3, v4, :cond_41

    iget-boolean v3, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    iget-boolean v4, v2, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    if-ne v3, v4, :cond_41

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    .line 219
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    iget-object v4, v2, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 220
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_41

    move v0, v1

    goto :goto_42

    :cond_41
    nop

    .line 215
    :goto_42
    return v0

    .line 206
    .end local v2    # "s":Landroid/telephony/PhoneCapability;
    :cond_43
    :goto_43
    return v0
.end method

.method public getDeviceNrCapabilities()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    new-array v0, v0, [I

    :cond_7
    return-object v0
.end method

.method public getLogicalModemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ModemInfo;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    return-object v0
.end method

.method public getMaxActiveDataSubscriptions()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 270
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    return v0
.end method

.method public getMaxActiveVoiceSubscriptions()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 260
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 196
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    iget-boolean v3, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    .line 199
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 200
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNetworkValidationBeforeSwitchSupported()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxActiveVoiceSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMaxActiveDataSubscriptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNetworkValidationBeforeSwitchSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDeviceNrCapability "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    .line 174
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveVoiceSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/telephony/PhoneCapability;->mMaxActiveDataSubscriptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean v0, p0, Landroid/telephony/PhoneCapability;->mNetworkValidationBeforeSwitchSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 237
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mLogicalModemList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Landroid/telephony/PhoneCapability;->mDeviceNrCapabilities:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    return-void
.end method
