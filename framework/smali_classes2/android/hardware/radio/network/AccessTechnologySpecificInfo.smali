.class public final Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
.super Ljava/lang/Object;
.source "AccessTechnologySpecificInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/AccessTechnologySpecificInfo$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/network/AccessTechnologySpecificInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final cdmaInfo:I = 0x1

.field public static final eutranInfo:I = 0x2

.field public static final geranDtmSupported:I = 0x4

.field public static final ngranNrVopsInfo:I = 0x3

.field public static final noinit:I


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    .line 28
    iput-object p2, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/network/AccessTechnologySpecificInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 217
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 220
    return-void

    .line 218
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 234
    iput p1, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    .line 235
    iput-object p2, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    .line 236
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 223
    packed-switch p1, :pswitch_data_2c

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_1c
    const-string v0, "geranDtmSupported"

    return-object v0

    .line 227
    :pswitch_1f
    const-string v0, "ngranNrVopsInfo"

    return-object v0

    .line 226
    :pswitch_22
    const-string v0, "eutranInfo"

    return-object v0

    .line 225
    :pswitch_25
    const-string v0, "cdmaInfo"

    return-object v0

    .line 224
    :pswitch_28
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static cdmaInfo(Landroid/hardware/radio/network/Cdma2000RegistrationInfo;)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    .line 53
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 199
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 200
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 202
    :cond_10
    return v0
.end method

.method public static eutranInfo(Landroid/hardware/radio/network/EutranRegistrationInfo;)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/EutranRegistrationInfo;

    .line 68
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static geranDtmSupported(Z)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 4
    .param p0, "_value"    # Z

    .line 98
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ngranNrVopsInfo(Landroid/hardware/radio/network/NrVopsInfo;)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/network/NrVopsInfo;

    .line 83
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noinit(Z)Landroid/hardware/radio/network/AccessTechnologySpecificInfo;
    .registers 4
    .param p0, "_value"    # Z

    .line 38
    new-instance v0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_27

    .line 192
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_27

    .line 189
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 190
    goto :goto_27

    .line 186
    :pswitch_1d
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 187
    nop

    .line 195
    :goto_27
    return v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    .registers 2

    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 58
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    return-object v0
.end method

.method public getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;
    .registers 2

    .line 72
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 73
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/EutranRegistrationInfo;

    return-object v0
.end method

.method public getGeranDtmSupported()Z
    .registers 2

    .line 102
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 103
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;
    .registers 2

    .line 87
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 88
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/network/NrVopsInfo;

    return-object v0
.end method

.method public getNoinit()Z
    .registers 2

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_assertTag(I)V

    .line 43
    iget-object v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 32
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_5c

    .line 178
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 175
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 176
    return-void

    .line 169
    .end local v1    # "_aidl_value":Z
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/network/NrVopsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/NrVopsInfo;

    .line 170
    .local v1, "_aidl_value":Landroid/hardware/radio/network/NrVopsInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 171
    return-void

    .line 164
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/NrVopsInfo;
    :pswitch_38
    sget-object v1, Landroid/hardware/radio/network/EutranRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/EutranRegistrationInfo;

    .line 165
    .local v1, "_aidl_value":Landroid/hardware/radio/network/EutranRegistrationInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 166
    return-void

    .line 159
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/EutranRegistrationInfo;
    :pswitch_44
    sget-object v1, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    .line 160
    .local v1, "_aidl_value":Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 161
    return-void

    .line 154
    .end local v1    # "_aidl_value":Landroid/hardware/radio/network/Cdma2000RegistrationInfo;
    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 155
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 156
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public setCdmaInfo(Landroid/hardware/radio/network/Cdma2000RegistrationInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setEutranInfo(Landroid/hardware/radio/network/EutranRegistrationInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/EutranRegistrationInfo;

    .line 77
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 78
    return-void
.end method

.method public setGeranDtmSupported(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 107
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method public setNgranNrVopsInfo(Landroid/hardware/radio/network/NrVopsInfo;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/network/NrVopsInfo;

    .line 92
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 47
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_set(ILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 207
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_ba

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.AccessTechnologySpecificInfo.geranDtmSupported("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getGeranDtmSupported()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 211
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.AccessTechnologySpecificInfo.ngranNrVopsInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.AccessTechnologySpecificInfo.eutranInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :pswitch_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.AccessTechnologySpecificInfo.cdmaInfo("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.network.AccessTechnologySpecificInfo.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_7e
        :pswitch_5e
        :pswitch_3e
        :pswitch_22
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 128
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->_tag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_33

    .line 143
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getGeranDtmSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_33

    .line 140
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNgranNrVopsInfo()Landroid/hardware/radio/network/NrVopsInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 141
    goto :goto_33

    .line 137
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getEutranInfo()Landroid/hardware/radio/network/EutranRegistrationInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    goto :goto_33

    .line 134
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getCdmaInfo()Landroid/hardware/radio/network/Cdma2000RegistrationInfo;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_33

    .line 131
    :pswitch_2b
    invoke-virtual {p0}, Landroid/hardware/radio/network/AccessTechnologySpecificInfo;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    nop

    .line 146
    :goto_33
    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
