.class public abstract Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;
.super Landroid/os/Binder;
.source "ISemInputDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x19

.field static final TRANSACTION_enableMotion:I = 0x7

.field static final TRANSACTION_getCommandList:I = 0xe

.field static final TRANSACTION_getDeviceEnabled:I = 0xd

.field static final TRANSACTION_getKeyPressStateAll:I = 0x1

.field static final TRANSACTION_getMotionControl:I = 0xa

.field static final TRANSACTION_getProperty:I = 0x1c

.field static final TRANSACTION_getSupportDevice:I = 0xb

.field static final TRANSACTION_getTspSupportFeature:I = 0xc

.field static final TRANSACTION_isEnableMotion:I = 0x8

.field static final TRANSACTION_isKeyPressedByKeycode:I = 0x2

.field static final TRANSACTION_isSupportMotion:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x3

.field static final TRANSACTION_runCommand:I = 0x1d

.field static final TRANSACTION_sendRawdataTsp:I = 0x5

.field static final TRANSACTION_setAodEnable:I = 0x12

.field static final TRANSACTION_setAodRect:I = 0x11

.field static final TRANSACTION_setCommand:I = 0x1a

.field static final TRANSACTION_setFodEnable:I = 0x13

.field static final TRANSACTION_setFodLpMode:I = 0x15

.field static final TRANSACTION_setFodRect:I = 0x14

.field static final TRANSACTION_setMotionControl:I = 0x9

.field static final TRANSACTION_setProperty:I = 0x1b

.field static final TRANSACTION_setSingletapEnable:I = 0x16

.field static final TRANSACTION_setSpenEnabled:I = 0x18

.field static final TRANSACTION_setSyncChanged:I = 0x17

.field static final TRANSACTION_setTemperature:I = 0x10

.field static final TRANSACTION_setTspEnabled:I = 0xf

.field static final TRANSACTION_unregisterListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 165
    packed-switch p0, :pswitch_data_78

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 281
    :pswitch_5
    const-string/jumbo v0, "runCommand"

    return-object v0

    .line 277
    :pswitch_9
    const-string/jumbo v0, "getProperty"

    return-object v0

    .line 273
    :pswitch_d
    const-string/jumbo v0, "setProperty"

    return-object v0

    .line 269
    :pswitch_11
    const-string/jumbo v0, "setCommand"

    return-object v0

    .line 265
    :pswitch_15
    const-string v0, "activate"

    return-object v0

    .line 261
    :pswitch_18
    const-string/jumbo v0, "setSpenEnabled"

    return-object v0

    .line 257
    :pswitch_1c
    const-string/jumbo v0, "setSyncChanged"

    return-object v0

    .line 253
    :pswitch_20
    const-string/jumbo v0, "setSingletapEnable"

    return-object v0

    .line 249
    :pswitch_24
    const-string/jumbo v0, "setFodLpMode"

    return-object v0

    .line 245
    :pswitch_28
    const-string/jumbo v0, "setFodRect"

    return-object v0

    .line 241
    :pswitch_2c
    const-string/jumbo v0, "setFodEnable"

    return-object v0

    .line 237
    :pswitch_30
    const-string/jumbo v0, "setAodEnable"

    return-object v0

    .line 233
    :pswitch_34
    const-string/jumbo v0, "setAodRect"

    return-object v0

    .line 229
    :pswitch_38
    const-string/jumbo v0, "setTemperature"

    return-object v0

    .line 225
    :pswitch_3c
    const-string/jumbo v0, "setTspEnabled"

    return-object v0

    .line 221
    :pswitch_40
    const-string/jumbo v0, "getCommandList"

    return-object v0

    .line 217
    :pswitch_44
    const-string/jumbo v0, "getDeviceEnabled"

    return-object v0

    .line 213
    :pswitch_48
    const-string/jumbo v0, "getTspSupportFeature"

    return-object v0

    .line 209
    :pswitch_4c
    const-string/jumbo v0, "getSupportDevice"

    return-object v0

    .line 205
    :pswitch_50
    const-string/jumbo v0, "getMotionControl"

    return-object v0

    .line 201
    :pswitch_54
    const-string/jumbo v0, "setMotionControl"

    return-object v0

    .line 197
    :pswitch_58
    const-string/jumbo v0, "isEnableMotion"

    return-object v0

    .line 193
    :pswitch_5c
    const-string v0, "enableMotion"

    return-object v0

    .line 189
    :pswitch_5f
    const-string/jumbo v0, "isSupportMotion"

    return-object v0

    .line 185
    :pswitch_63
    const-string/jumbo v0, "sendRawdataTsp"

    return-object v0

    .line 181
    :pswitch_67
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 177
    :pswitch_6b
    const-string/jumbo v0, "registerListener"

    return-object v0

    .line 173
    :pswitch_6f
    const-string/jumbo v0, "isKeyPressedByKeycode"

    return-object v0

    .line 169
    :pswitch_73
    const-string/jumbo v0, "getKeyPressStateAll"

    return-object v0

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 160
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1269
    const/16 v0, 0x1c

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 292
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceManager"

    .line 297
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 298
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    :cond_d
    packed-switch p1, :pswitch_data_2ec

    .line 308
    packed-switch p1, :pswitch_data_2f2

    .line 661
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 304
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    return v1

    .line 650
    :pswitch_1c
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 652
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    goto/16 :goto_2ea

    .line 638
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_37
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 640
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    .line 641
    .local v3, "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v4

    .line 643
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    goto/16 :goto_2ea

    .line 624
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_56
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 626
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    .line 628
    .restart local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 629
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v5

    .line 631
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    goto/16 :goto_2ea

    .line 610
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_79
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 612
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    .line 614
    .local v3, "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 615
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v5

    .line 617
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    goto/16 :goto_2ea

    .line 596
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_9c
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 598
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;

    .line 600
    .local v3, "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 601
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v5

    .line 603
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    goto/16 :goto_2ea

    .line 582
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_arg1":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 586
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 587
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSpenEnabled(IIZ)I

    move-result v5

    .line 589
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    goto/16 :goto_2ea

    .line 572
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 573
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSyncChanged(I)I

    move-result v3

    .line 575
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    goto/16 :goto_2ea

    .line 562
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 563
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setSingletapEnable(I)I

    move-result v3

    .line 565
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    goto/16 :goto_2ea

    .line 552
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 553
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodLpMode(I)I

    move-result v3

    .line 555
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    goto/16 :goto_2ea

    .line 536
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 538
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 540
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 542
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 543
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodRect(IIII)I

    move-result v6

    .line 545
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    goto/16 :goto_2ea

    .line 522
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 526
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 527
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setFodEnable(III)I

    move-result v5

    .line 529
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    goto/16 :goto_2ea

    .line 512
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodEnable(I)I

    move-result v3

    .line 515
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    goto/16 :goto_2ea

    .line 496
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 500
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 502
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 503
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setAodRect(IIII)I

    move-result v6

    .line 505
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    goto/16 :goto_2ea

    .line 486
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_17f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTemperature(I)I

    move-result v3

    .line 489
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    goto/16 :goto_2ea

    .line 472
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 476
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 477
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setTspEnabled(IIZ)I

    move-result v5

    .line 479
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    goto/16 :goto_2ea

    .line 462
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_1ad
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 463
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getCommandList(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)Ljava/lang/String;

    move-result-object v3

    .line 465
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    goto/16 :goto_2ea

    .line 452
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1c4
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 453
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getDeviceEnabled(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v3

    .line 455
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    goto/16 :goto_2ea

    .line 442
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_result":I
    :pswitch_1db
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 443
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getTspSupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v3

    .line 445
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_2ea

    .line 432
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_result":I
    :pswitch_1f2
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 433
    .restart local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getSupportDevice(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v3

    .line 435
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    goto/16 :goto_2ea

    .line 420
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_result":I
    :pswitch_209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 425
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    goto/16 :goto_2ea

    .line 406
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 410
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    .line 413
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    goto/16 :goto_2ea

    .line 394
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_23b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 396
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 399
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    goto/16 :goto_2ea

    .line 380
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 384
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v5

    .line 387
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    goto/16 :goto_2ea

    .line 370
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_26d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isSupportMotion(Ljava/lang/String;)Z

    move-result v3

    .line 373
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 375
    goto :goto_2ea

    .line 358
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_27f
    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    .line 360
    .local v2, "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 361
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->sendRawdataTsp(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;[I)I

    move-result v4

    .line 363
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    goto :goto_2ea

    .line 344
    .end local v2    # "_arg0":Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .end local v3    # "_arg1":[I
    .end local v4    # "_result":I
    :pswitch_299
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 346
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 348
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 351
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto :goto_2ea

    .line 330
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_2b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 332
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 335
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v5

    .line 337
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 339
    goto :goto_2ea

    .line 320
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_2cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->isKeyPressedByKeycode(I)Z

    move-result v3

    .line 323
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    goto :goto_2ea

    .line 312
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2df
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    nop

    .line 664
    .end local v2    # "_result":Ljava/lang/String;
    :goto_2ea
    return v1

    nop

    :pswitch_data_2ec
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2f2
    .packed-switch 0x1
        :pswitch_2df
        :pswitch_2cd
        :pswitch_2b3
        :pswitch_299
        :pswitch_27f
        :pswitch_26d
        :pswitch_252
        :pswitch_23b
        :pswitch_220
        :pswitch_209
        :pswitch_1f2
        :pswitch_1db
        :pswitch_1c4
        :pswitch_1ad
        :pswitch_192
        :pswitch_17f
        :pswitch_160
        :pswitch_14d
        :pswitch_132
        :pswitch_113
        :pswitch_100
        :pswitch_ed
        :pswitch_da
        :pswitch_bf
        :pswitch_9c
        :pswitch_79
        :pswitch_56
        :pswitch_37
        :pswitch_1c
    .end packed-switch
.end method
