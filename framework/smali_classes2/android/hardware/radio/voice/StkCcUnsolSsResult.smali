.class public Landroid/hardware/radio/voice/StkCcUnsolSsResult;
.super Ljava/lang/Object;
.source "StkCcUnsolSsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/voice/StkCcUnsolSsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TYPE_ACTIVATION:I = 0x0

.field public static final REQUEST_TYPE_DEACTIVATION:I = 0x1

.field public static final REQUEST_TYPE_ERASURE:I = 0x4

.field public static final REQUEST_TYPE_INTERROGATION:I = 0x2

.field public static final REQUEST_TYPE_REGISTRATION:I = 0x3

.field public static final SERVICE_TYPE_ALL_BARRING:I = 0x10

.field public static final SERVICE_TYPE_BAIC:I = 0xe

.field public static final SERVICE_TYPE_BAIC_ROAMING:I = 0xf

.field public static final SERVICE_TYPE_BAOC:I = 0xb

.field public static final SERVICE_TYPE_BAOIC:I = 0xc

.field public static final SERVICE_TYPE_BAOIC_EXC_HOME:I = 0xd

.field public static final SERVICE_TYPE_CFU:I = 0x0

.field public static final SERVICE_TYPE_CF_ALL:I = 0x4

.field public static final SERVICE_TYPE_CF_ALL_CONDITIONAL:I = 0x5

.field public static final SERVICE_TYPE_CF_BUSY:I = 0x1

.field public static final SERVICE_TYPE_CF_NOT_REACHABLE:I = 0x3

.field public static final SERVICE_TYPE_CF_NO_REPLY:I = 0x2

.field public static final SERVICE_TYPE_CLIP:I = 0x6

.field public static final SERVICE_TYPE_CLIR:I = 0x7

.field public static final SERVICE_TYPE_COLP:I = 0x8

.field public static final SERVICE_TYPE_COLR:I = 0x9

.field public static final SERVICE_TYPE_INCOMING_BARRING:I = 0x12

.field public static final SERVICE_TYPE_OUTGOING_BARRING:I = 0x11

.field public static final SERVICE_TYPE_WAIT:I = 0xa

.field public static final SUPP_SERVICE_CLASS_DATA:I = 0x2

.field public static final SUPP_SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final SUPP_SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final SUPP_SERVICE_CLASS_FAX:I = 0x4

.field public static final SUPP_SERVICE_CLASS_MAX:I = 0x80

.field public static final SUPP_SERVICE_CLASS_NONE:I = 0x0

.field public static final SUPP_SERVICE_CLASS_PACKET:I = 0x40

.field public static final SUPP_SERVICE_CLASS_PAD:I = 0x80

.field public static final SUPP_SERVICE_CLASS_SMS:I = 0x8

.field public static final SUPP_SERVICE_CLASS_VOICE:I = 0x1

.field public static final TELESERVICE_TYPE_ALL_DATA_TELESERVICES:I = 0x3

.field public static final TELESERVICE_TYPE_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final TELESERVICE_TYPE_ALL_TELESEVICES:I = 0x1

.field public static final TELESERVICE_TYPE_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final TELESERVICE_TYPE_SMS_SERVICES:I = 0x4

.field public static final TELESERVICE_TYPE_TELEPHONY:I = 0x2


# instance fields
.field public cfData:[Landroid/hardware/radio/voice/CfData;

.field public requestType:I

.field public result:I

.field public serviceClass:I

.field public serviceType:I

.field public ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

.field public teleserviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;

    invoke-direct {v0}, Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    .line 8
    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    .line 9
    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    .line 10
    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 8
    .param p1, "_v"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 132
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_19

    aget-object v4, v2, v0

    .line 135
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 134
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 137
    :cond_19
    return v1

    .line 139
    .end local v1    # "_mask":I
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_26

    .line 140
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 142
    :cond_26
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 127
    iget-object v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 128
    return v0
.end method

.method public final getStability()I
    .registers 2

    .line 15
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ee

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 66
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 66
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 66
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 66
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 66
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 66
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_b2
    :try_start_b2
    sget-object v2, Landroid/hardware/radio/voice/SsInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/SsInfoData;

    iput-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c0
    .catchall {:try_start_b2 .. :try_end_c0} :catchall_ec

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d2

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cc

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 66
    :cond_cc
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_d2
    :try_start_d2
    sget-object v2, Landroid/hardware/radio/voice/CfData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CfData;

    iput-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;
    :try_end_dc
    .catchall {:try_start_d2 .. :try_end_dc} :catchall_ec

    .line 65
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e6

    .line 68
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    nop

    .line 70
    return-void

    .line 66
    :cond_e6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :catchall_ec
    move-exception v2

    goto :goto_f6

    .line 49
    :cond_ee
    :try_start_ee
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_ec

    .line 65
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_f6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_ff

    .line 66
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_ff
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 113
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 114
    .local v0, "_aidl_sj":Ljava/util/StringJoiner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "teleserviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    invoke-static {v2}, Landroid/hardware/radio/RadioError$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cfData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.radio.voice.StkCcUnsolSsResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 31
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 40
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
