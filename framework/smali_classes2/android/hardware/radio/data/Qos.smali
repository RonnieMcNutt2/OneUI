.class public final Landroid/hardware/radio/data/Qos;
.super Ljava/lang/Object;
.source "Qos.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/Qos$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/data/Qos;",
            ">;"
        }
    .end annotation
.end field

.field public static final eps:I = 0x1

.field public static final noinit:I = 0x0

.field public static final nr:I = 0x2


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/hardware/radio/data/Qos$1;

    invoke-direct {v0}, Landroid/hardware/radio/data/Qos$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/data/Qos;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

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
    iput p1, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    .line 26
    iput-object p2, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/Qos;->readFromParcel(Landroid/os/Parcel;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/data/Qos-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/Qos;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 164
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 167
    return-void

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/Qos;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/data/Qos;->_tagString(I)Ljava/lang/String;

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

    .line 179
    iput p1, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    .line 180
    iput-object p2, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    .line 181
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 170
    packed-switch p1, :pswitch_data_26

    .line 175
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

    .line 173
    :pswitch_1c
    const-string v0, "nr"

    return-object v0

    .line 172
    :pswitch_1f
    const-string v0, "eps"

    return-object v0

    .line 171
    :pswitch_22
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 148
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 149
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 151
    :cond_10
    return v0
.end method

.method public static eps(Landroid/hardware/radio/data/EpsQos;)Landroid/hardware/radio/data/Qos;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/data/EpsQos;

    .line 51
    new-instance v0, Landroid/hardware/radio/data/Qos;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/data/Qos;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noinit(Z)Landroid/hardware/radio/data/Qos;
    .registers 4
    .param p0, "_value"    # Z

    .line 36
    new-instance v0, Landroid/hardware/radio/data/Qos;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/data/Qos;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static nr(Landroid/hardware/radio/data/NrQos;)Landroid/hardware/radio/data/Qos;
    .registers 3
    .param p0, "_value"    # Landroid/hardware/radio/data/NrQos;

    .line 66
    new-instance v0, Landroid/hardware/radio/data/Qos;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/radio/data/Qos;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    .line 141
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/Qos;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1d

    .line 138
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/radio/data/Qos;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 139
    nop

    .line 144
    :goto_1d
    return v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_9
    .end packed-switch
.end method

.method public getEps()Landroid/hardware/radio/data/EpsQos;
    .registers 2

    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/Qos;->_assertTag(I)V

    .line 56
    iget-object v0, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/data/EpsQos;

    return-object v0
.end method

.method public getNoinit()Z
    .registers 2

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/Qos;->_assertTag(I)V

    .line 41
    iget-object v0, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNr()Landroid/hardware/radio/data/NrQos;
    .registers 2

    .line 70
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/Qos;->_assertTag(I)V

    .line 71
    iget-object v0, p0, Landroid/hardware/radio/data/Qos;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/data/NrQos;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 30
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_44

    .line 130
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

    .line 126
    :pswitch_20
    sget-object v1, Landroid/hardware/radio/data/NrQos;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/NrQos;

    .line 127
    .local v1, "_aidl_value":Landroid/hardware/radio/data/NrQos;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 128
    return-void

    .line 121
    .end local v1    # "_aidl_value":Landroid/hardware/radio/data/NrQos;
    :pswitch_2c
    sget-object v1, Landroid/hardware/radio/data/EpsQos;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/EpsQos;

    .line 122
    .local v1, "_aidl_value":Landroid/hardware/radio/data/EpsQos;
    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 123
    return-void

    .line 116
    .end local v1    # "_aidl_value":Landroid/hardware/radio/data/EpsQos;
    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 117
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 118
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public setEps(Landroid/hardware/radio/data/EpsQos;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/data/EpsQos;

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 45
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public setNr(Landroid/hardware/radio/data/NrQos;)V
    .registers 3
    .param p1, "_value"    # Landroid/hardware/radio/data/NrQos;

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/radio/data/Qos;->_set(ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 156
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_7e

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.Qos.nr("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

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

    .line 158
    :pswitch_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.Qos.eps("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

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

    .line 157
    :pswitch_62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.Qos.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_42
        :pswitch_22
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 96
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/hardware/radio/data/Qos;->_tag:I

    packed-switch v0, :pswitch_data_24

    goto :goto_23

    .line 105
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNr()Landroid/hardware/radio/data/NrQos;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_23

    .line 102
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getEps()Landroid/hardware/radio/data/EpsQos;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 103
    goto :goto_23

    .line 99
    :pswitch_1b
    invoke-virtual {p0}, Landroid/hardware/radio/data/Qos;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    nop

    .line 108
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
