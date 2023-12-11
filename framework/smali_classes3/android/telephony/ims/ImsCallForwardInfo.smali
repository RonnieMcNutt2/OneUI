.class public final Landroid/telephony/ims/ImsCallForwardInfo;
.super Ljava/lang/Object;
.source "ImsCallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallForwardInfo$TypeOfAddress;,
        Landroid/telephony/ims/ImsCallForwardInfo$CallForwardStatus;,
        Landroid/telephony/ims/ImsCallForwardInfo$CallForwardReasons;
    }
.end annotation


# static fields
.field public static final CDIV_CF_REASON_ALL:I = 0x4

.field public static final CDIV_CF_REASON_ALL_CONDITIONAL:I = 0x5

.field public static final CDIV_CF_REASON_BUSY:I = 0x1

.field public static final CDIV_CF_REASON_NOT_LOGGED_IN:I = 0x6

.field public static final CDIV_CF_REASON_NOT_REACHABLE:I = 0x3

.field public static final CDIV_CF_REASON_NO_REPLY:I = 0x2

.field public static final CDIV_CF_REASON_UNCONDITIONAL:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_ACTIVE:I = 0x1

.field public static final STATUS_NOT_ACTIVE:I = 0x0

.field public static final TYPE_OF_ADDRESS_INTERNATIONAL:I = 0x91

.field public static final TYPE_OF_ADDRESS_UNKNOWN:I = 0x81


# instance fields
.field public mCondition:I

.field public mNumber:Ljava/lang/String;

.field public mServiceClass:I

.field public mStatus:I

.field public mTimeSeconds:I

.field public mToA:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 209
    new-instance v0, Landroid/telephony/ims/ImsCallForwardInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallForwardInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;I)V
    .registers 7
    .param p1, "reason"    # I
    .param p2, "status"    # I
    .param p3, "toA"    # I
    .param p4, "serviceClass"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "replyTimerSec"    # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 162
    iput p2, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 163
    iput p3, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 164
    iput p4, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 165
    iput-object p5, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 166
    iput p6, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallForwardInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 172
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    .line 207
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getCondition()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceClass()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 233
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    return v0
.end method

.method public getTimeSeconds()I
    .registers 2

    .line 264
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    return v0
.end method

.method public getToA()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Condition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    iget v1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    if-nez v1, :cond_26

    const-string v1, "disabled"

    goto :goto_28

    :cond_26
    const-string v1, "enabled"

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ToA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Service Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Time (seconds): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mCondition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mToA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mTimeSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/telephony/ims/ImsCallForwardInfo;->mServiceClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void
.end method
