.class public abstract Landroid/hardware/radio/sim/IRadioSimIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioSimIndication.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSimIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_carrierInfoForImsiEncryption:I = 0x1

.field static final TRANSACTION_cdmaSubscriptionSourceChanged:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_simPhonebookChanged:I = 0x3

.field static final TRANSACTION_simPhonebookRecordsReceived:I = 0x4

.field static final TRANSACTION_simRefresh:I = 0x5

.field static final TRANSACTION_simStatusChanged:I = 0x6

.field static final TRANSACTION_stkEventNotify:I = 0x7

.field static final TRANSACTION_stkProactiveCommand:I = 0x8

.field static final TRANSACTION_stkSessionEnd:I = 0x9

.field static final TRANSACTION_subscriptionStatusChanged:I = 0xa

.field static final TRANSACTION_uiccApplicationsEnablementChanged:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->markVintfStability()V

    .line 71
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 79
    if-nez p0, :cond_4

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 83
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSimIndication;

    if-eqz v1, :cond_14

    .line 84
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/sim/IRadioSimIndication;

    return-object v1

    .line 86
    :cond_14
    new-instance v1, Landroid/hardware/radio/sim/IRadioSimIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 90
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    sparse-switch p1, :sswitch_data_d8

    .line 118
    packed-switch p1, :pswitch_data_e6

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 102
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v1

    .line 107
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v1

    .line 113
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 217
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 219
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 220
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->uiccApplicationsEnablementChanged(IZ)V

    .line 222
    goto/16 :goto_d6

    .line 207
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 209
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 210
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 212
    goto/16 :goto_d6

    .line 199
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v2}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->stkSessionEnd(I)V

    .line 202
    goto/16 :goto_d6

    .line 189
    .end local v2    # "_arg0":I
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 194
    goto :goto_d6

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 184
    goto :goto_d6

    .line 171
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simStatusChanged(I)V

    .line 174
    goto :goto_d6

    .line 161
    .end local v2    # "_arg0":I
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/sim/SimRefreshResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/sim/SimRefreshResult;

    .line 164
    .local v3, "_arg1":Landroid/hardware/radio/sim/SimRefreshResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simRefresh(ILandroid/hardware/radio/sim/SimRefreshResult;)V

    .line 166
    goto :goto_d6

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/sim/SimRefreshResult;
    :pswitch_9a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 151
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 153
    .local v3, "_arg1":B
    sget-object v4, Landroid/hardware/radio/sim/PhonebookRecordInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/radio/sim/PhonebookRecordInfo;

    .line 154
    .local v4, "_arg2":[Landroid/hardware/radio/sim/PhonebookRecordInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simPhonebookRecordsReceived(IB[Landroid/hardware/radio/sim/PhonebookRecordInfo;)V

    .line 156
    goto :goto_d6

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":B
    .end local v4    # "_arg2":[Landroid/hardware/radio/sim/PhonebookRecordInfo;
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simPhonebookChanged(I)V

    .line 144
    goto :goto_d6

    .line 131
    .end local v2    # "_arg0":I
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 134
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 136
    goto :goto_d6

    .line 123
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 126
    nop

    .line 229
    .end local v2    # "_arg0":I
    :goto_d6
    return v1

    nop

    :sswitch_data_d8
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_bc
        :pswitch_b1
        :pswitch_9a
        :pswitch_87
        :pswitch_7c
        :pswitch_6d
        :pswitch_5e
        :pswitch_52
        :pswitch_42
        :pswitch_32
    .end packed-switch
.end method
