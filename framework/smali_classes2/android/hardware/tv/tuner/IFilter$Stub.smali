.class public abstract Landroid/hardware/tv/tuner/IFilter$Stub;
.super Landroid/os/Binder;
.source "IFilter.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_configure:I = 0x3

.field static final TRANSACTION_configureAvStreamType:I = 0x4

.field static final TRANSACTION_configureIpCid:I = 0x5

.field static final TRANSACTION_configureMonitorEvent:I = 0x6

.field static final TRANSACTION_flush:I = 0x9

.field static final TRANSACTION_getAvSharedHandle:I = 0xa

.field static final TRANSACTION_getId:I = 0xb

.field static final TRANSACTION_getId64Bit:I = 0xc

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getQueueDesc:I = 0x1

.field static final TRANSACTION_releaseAvHandle:I = 0xd

.field static final TRANSACTION_setDataSource:I = 0xe

.field static final TRANSACTION_setDelayHint:I = 0xf

.field static final TRANSACTION_start:I = 0x7

.field static final TRANSACTION_stop:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->markVintfStability()V

    .line 87
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFilter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 95
    if-nez p0, :cond_4

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 99
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFilter;

    if-eqz v1, :cond_14

    .line 100
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFilter;

    return-object v1

    .line 102
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFilter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 106
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

    .line 110
    sget-object v0, Landroid/hardware/tv/tuner/IFilter$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 111
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 112
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    :cond_d
    sparse-switch p1, :sswitch_data_10e

    .line 134
    packed-switch p1, :pswitch_data_11c

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 123
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    return v1

    .line 129
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return v1

    .line 254
    :pswitch_32
    sget-object v2, Landroid/hardware/tv/tuner/FilterDelayHint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FilterDelayHint;

    .line 255
    .local v2, "_arg0":Landroid/hardware/tv/tuner/FilterDelayHint;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->setDelayHint(Landroid/hardware/tv/tuner/FilterDelayHint;)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_10c

    .line 245
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/FilterDelayHint;
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFilter;

    move-result-object v2

    .line 246
    .local v2, "_arg0":Landroid/hardware/tv/tuner/IFilter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->setDataSource(Landroid/hardware/tv/tuner/IFilter;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    goto/16 :goto_10c

    .line 234
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/IFilter;
    :pswitch_58
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    .line 236
    .local v2, "_arg0":Landroid/hardware/common/NativeHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 237
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/tv/tuner/IFilter$Stub;->releaseAvHandle(Landroid/hardware/common/NativeHandle;J)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_10c

    .line 226
    .end local v2    # "_arg0":Landroid/hardware/common/NativeHandle;
    .end local v3    # "_arg1":J
    :pswitch_6f
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getId64Bit()J

    move-result-wide v2

    .line 227
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    goto/16 :goto_10c

    .line 219
    .end local v2    # "_result":J
    :pswitch_7b
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->getId()I

    move-result v2

    .line 220
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    goto/16 :goto_10c

    .line 209
    .end local v2    # "_result":I
    :pswitch_87
    new-instance v2, Landroid/hardware/common/NativeHandle;

    invoke-direct {v2}, Landroid/hardware/common/NativeHandle;-><init>()V

    .line 210
    .local v2, "_arg0":Landroid/hardware/common/NativeHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->getAvSharedHandle(Landroid/hardware/common/NativeHandle;)J

    move-result-wide v3

    .line 212
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    goto/16 :goto_10c

    .line 202
    .end local v2    # "_arg0":Landroid/hardware/common/NativeHandle;
    .end local v3    # "_result":J
    :pswitch_9e
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->flush()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    goto :goto_10c

    .line 196
    :pswitch_a5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->stop()V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto :goto_10c

    .line 190
    :pswitch_ac
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->start()V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_10c

    .line 182
    :pswitch_b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureMonitorEvent(I)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_10c

    .line 173
    .end local v2    # "_arg0":I
    :pswitch_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureIpCid(I)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_10c

    .line 164
    .end local v2    # "_arg0":I
    :pswitch_cf
    sget-object v2, Landroid/hardware/tv/tuner/AvStreamType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/AvStreamType;

    .line 165
    .local v2, "_arg0":Landroid/hardware/tv/tuner/AvStreamType;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configureAvStreamType(Landroid/hardware/tv/tuner/AvStreamType;)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    goto :goto_10c

    .line 155
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/AvStreamType;
    :pswitch_e1
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterSettings;

    .line 156
    .local v2, "_arg0":Landroid/hardware/tv/tuner/DemuxFilterSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->configure(Landroid/hardware/tv/tuner/DemuxFilterSettings;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    goto :goto_10c

    .line 148
    .end local v2    # "_arg0":Landroid/hardware/tv/tuner/DemuxFilterSettings;
    :pswitch_f3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFilter$Stub;->close()V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    goto :goto_10c

    .line 139
    :pswitch_fa
    new-instance v2, Landroid/hardware/common/fmq/MQDescriptor;

    invoke-direct {v2}, Landroid/hardware/common/fmq/MQDescriptor;-><init>()V

    .line 140
    .local v2, "_arg0":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/hardware/tv/tuner/IFilter$Stub;->getQueueDesc(Landroid/hardware/common/fmq/MQDescriptor;)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 144
    nop

    .line 265
    .end local v2    # "_arg0":Landroid/hardware/common/fmq/MQDescriptor;, "Landroid/hardware/common/fmq/MQDescriptor<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    :goto_10c
    return v1

    nop

    :sswitch_data_10e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_fa
        :pswitch_f3
        :pswitch_e1
        :pswitch_cf
        :pswitch_c1
        :pswitch_b3
        :pswitch_ac
        :pswitch_a5
        :pswitch_9e
        :pswitch_87
        :pswitch_7b
        :pswitch_6f
        :pswitch_58
        :pswitch_45
        :pswitch_32
    .end packed-switch
.end method
