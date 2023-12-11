.class public final Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;
.super Ljava/lang/Object;
.source "DemuxIpAddressIpAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final v4:I = 0x0

.field public static final v6:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    new-instance v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 16
    .local v1, "_value":[B
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    .line 17
    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    .line 26
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 119
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 122
    return-void

    .line 120
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tagString(I)Ljava/lang/String;

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

    .line 133
    iput p1, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    .line 134
    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 125
    packed-switch p1, :pswitch_data_22

    .line 129
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

    .line 127
    :pswitch_1c
    const-string v0, "v6"

    return-object v0

    .line 126
    :pswitch_1f
    const-string v0, "v4"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static v4([B)Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;
    .registers 3
    .param p0, "_value"    # [B

    .line 36
    new-instance v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static v6([B)Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;
    .registers 3
    .param p0, "_value"    # [B

    .line 51
    new-instance v0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getTag()I

    .line 115
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 30
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    return v0
.end method

.method public getV4()[B
    .registers 2

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_assertTag(I)V

    .line 41
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public getV6()[B
    .registers 2

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_assertTag(I)V

    .line 56
    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_value:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_30

    .line 107
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

    .line 103
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 104
    .local v1, "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    .line 98
    .end local v1    # "_aidl_value":[B
    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 99
    .restart local v1    # "_aidl_value":[B
    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 100
    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public setV4([B)V
    .registers 3
    .param p1, "_value"    # [B

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public setV6([B)V
    .registers 3
    .param p1, "_value"    # [B

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_set(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 81
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 87
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getV6()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1b

    .line 84
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxIpAddressIpAddress;->getV4()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 85
    nop

    .line 90
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
