.class public abstract Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;
.super Landroid/os/Binder;
.source "ISehRadioSimIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_phonebookInitCompleteIndication:I = 0x2

.field static final TRANSACTION_releaseCompleteMessageIndication:I = 0x8

.field static final TRANSACTION_sapNotify:I = 0x9

.field static final TRANSACTION_simCountMismatchedIndication:I = 0x6

.field static final TRANSACTION_simOnOffStateChangedNotify:I = 0x7

.field static final TRANSACTION_simPhonebookReadyIndication:I = 0x1

.field static final TRANSACTION_simSwapStateChangedIndication:I = 0x5

.field static final TRANSACTION_stkCallControlResultIndication:I = 0x4

.field static final TRANSACTION_stkSmsSendResultIndication:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 116
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->markVintfStability()V

    .line 117
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 125
    if-nez p0, :cond_4

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 129
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;

    if-eqz v1, :cond_14

    .line 130
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;

    return-object v1

    .line 132
    :cond_14
    new-instance v1, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 136
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    sget-object v0, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 141
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_d
    sparse-switch p1, :sswitch_data_b8

    .line 164
    packed-switch p1, :pswitch_data_c6

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 148
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v1

    .line 153
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return v1

    .line 159
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p0}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 245
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 248
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->sapNotify(I[B)V

    .line 250
    goto/16 :goto_b6

    .line 235
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 237
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;

    .line 238
    .local v3, "_arg1":Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;)V

    .line 240
    goto :goto_b6

    .line 225
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 227
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->simOnOffStateChangedNotify(II)V

    .line 230
    goto :goto_b6

    .line 215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 217
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 219
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->simCountMismatchedIndication(II)V

    .line 220
    goto :goto_b6

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->simSwapStateChangedIndication(II)V

    .line 210
    goto :goto_b6

    .line 195
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->stkCallControlResultIndication(ILjava/lang/String;)V

    .line 200
    goto :goto_b6

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2, v3}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->stkSmsSendResultIndication(II)V

    .line 190
    goto :goto_b6

    .line 177
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->phonebookInitCompleteIndication(I)V

    .line 180
    goto :goto_b6

    .line 169
    .end local v2    # "_arg0":I
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-virtual {p0, v2}, Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Stub;->simPhonebookReadyIndication(I)V

    .line 172
    nop

    .line 257
    .end local v2    # "_arg0":I
    :goto_b6
    return v1

    nop

    :sswitch_data_b8
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_a0
        :pswitch_91
        :pswitch_82
        :pswitch_73
        :pswitch_64
        :pswitch_55
        :pswitch_42
        :pswitch_32
    .end packed-switch
.end method
