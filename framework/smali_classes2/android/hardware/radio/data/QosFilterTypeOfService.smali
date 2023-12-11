.class public final Landroid/hardware/radio/data/QosFilterTypeOfService;
.super Ljava/lang/Object;
.source "QosFilterTypeOfService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/QosFilterTypeOfService$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/data/QosFilterTypeOfService;",
            ">;"
        }
    .end annotation
.end field

.field public static final noinit:I = 0x0

.field public static final value:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/hardware/radio/data/QosFilterTypeOfService$1;

    invoke-direct {v0}, Landroid/hardware/radio/data/QosFilterTypeOfService$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/data/QosFilterTypeOfService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "_value":Z
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    .line 16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_value:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    .line 25
    iput-object p2, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_value:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/radio/data/QosFilterTypeOfService;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/data/QosFilterTypeOfService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/QosFilterTypeOfService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 126
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 129
    return-void

    .line 127
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tagString(I)Ljava/lang/String;

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

    .line 140
    iput p1, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    .line 141
    iput-object p2, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_value:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 132
    packed-switch p1, :pswitch_data_22

    .line 136
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

    .line 134
    :pswitch_1c
    const-string v0, "value"

    return-object v0

    .line 133
    :pswitch_1f
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static noinit(Z)Landroid/hardware/radio/data/QosFilterTypeOfService;
    .registers 4
    .param p0, "_value"    # Z

    .line 35
    new-instance v0, Landroid/hardware/radio/data/QosFilterTypeOfService;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/data/QosFilterTypeOfService;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static value(B)Landroid/hardware/radio/data/QosFilterTypeOfService;
    .registers 4
    .param p0, "_value"    # B

    .line 50
    new-instance v0, Landroid/hardware/radio/data/QosFilterTypeOfService;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/radio/data/QosFilterTypeOfService;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getTag()I

    .line 114
    return v0
.end method

.method public getNoinit()Z
    .registers 2

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_assertTag(I)V

    .line 40
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    .line 29
    iget v0, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    return v0
.end method

.method public getValue()B
    .registers 2

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_assertTag(I)V

    .line 55
    iget-object v0, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 94
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_38

    .line 106
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

    .line 102
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 103
    .local v1, "_aidl_value":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_set(ILjava/lang/Object;)V

    .line 104
    return-void

    .line 97
    .end local v1    # "_aidl_value":B
    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 98
    .local v1, "_aidl_value":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_set(ILjava/lang/Object;)V

    .line 99
    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public setNoinit(Z)V
    .registers 4
    .param p1, "_value"    # Z

    .line 44
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_set(ILjava/lang/Object;)V

    .line 45
    return-void
.end method

.method public setValue(B)V
    .registers 4
    .param p1, "_value"    # B

    .line 59
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/radio/data/QosFilterTypeOfService;->_set(ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 119
    iget v0, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    const-string v1, ")"

    packed-switch v0, :pswitch_data_5a

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.QosFilterTypeOfService.value("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getValue()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.data.QosFilterTypeOfService.noinit("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getNoinit()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_22
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 80
    iget v0, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Landroid/hardware/radio/data/QosFilterTypeOfService;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 86
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1b

    .line 83
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/radio/data/QosFilterTypeOfService;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    nop

    .line 89
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
