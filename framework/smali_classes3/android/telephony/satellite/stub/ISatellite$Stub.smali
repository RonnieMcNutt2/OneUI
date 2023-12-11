.class public abstract Landroid/telephony/satellite/stub/ISatellite$Stub;
.super Landroid/os/Binder;
.source "ISatellite.java"

# interfaces
.implements Landroid/telephony/satellite/stub/ISatellite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/satellite/stub/ISatellite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deprovisionSatelliteService:I = 0xb

.field static final TRANSACTION_enableCellularModemWhileSatelliteModeIsOn:I = 0x3

.field static final TRANSACTION_pollPendingSatelliteDatagrams:I = 0xd

.field static final TRANSACTION_provisionSatelliteService:I = 0xa

.field static final TRANSACTION_requestIsSatelliteCommunicationAllowedForCurrentLocation:I = 0x10

.field static final TRANSACTION_requestIsSatelliteEnabled:I = 0x5

.field static final TRANSACTION_requestIsSatelliteProvisioned:I = 0xc

.field static final TRANSACTION_requestIsSatelliteSupported:I = 0x6

.field static final TRANSACTION_requestSatelliteCapabilities:I = 0x7

.field static final TRANSACTION_requestSatelliteEnabled:I = 0x4

.field static final TRANSACTION_requestSatelliteListeningEnabled:I = 0x2

.field static final TRANSACTION_requestSatelliteModemState:I = 0xf

.field static final TRANSACTION_requestTimeForNextSatelliteVisibility:I = 0x11

.field static final TRANSACTION_sendSatelliteDatagram:I = 0xe

.field static final TRANSACTION_setSatelliteListener:I = 0x1

.field static final TRANSACTION_startSendingSatellitePointingInfo:I = 0x8

.field static final TRANSACTION_stopSendingSatellitePointingInfo:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 383
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 384
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/satellite/stub/ISatellite$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatellite;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 392
    if-nez p0, :cond_4

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 395
    :cond_4
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 396
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/satellite/stub/ISatellite;

    if-eqz v1, :cond_14

    .line 397
    move-object v1, v0

    check-cast v1, Landroid/telephony/satellite/stub/ISatellite;

    return-object v1

    .line 399
    :cond_14
    new-instance v1, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/satellite/stub/ISatellite$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 408
    packed-switch p0, :pswitch_data_48

    .line 480
    const/4 v0, 0x0

    return-object v0

    .line 476
    :pswitch_5
    const-string/jumbo v0, "requestTimeForNextSatelliteVisibility"

    return-object v0

    .line 472
    :pswitch_9
    const-string/jumbo v0, "requestIsSatelliteCommunicationAllowedForCurrentLocation"

    return-object v0

    .line 468
    :pswitch_d
    const-string/jumbo v0, "requestSatelliteModemState"

    return-object v0

    .line 464
    :pswitch_11
    const-string/jumbo v0, "sendSatelliteDatagram"

    return-object v0

    .line 460
    :pswitch_15
    const-string/jumbo v0, "pollPendingSatelliteDatagrams"

    return-object v0

    .line 456
    :pswitch_19
    const-string/jumbo v0, "requestIsSatelliteProvisioned"

    return-object v0

    .line 452
    :pswitch_1d
    const-string v0, "deprovisionSatelliteService"

    return-object v0

    .line 448
    :pswitch_20
    const-string/jumbo v0, "provisionSatelliteService"

    return-object v0

    .line 444
    :pswitch_24
    const-string/jumbo v0, "stopSendingSatellitePointingInfo"

    return-object v0

    .line 440
    :pswitch_28
    const-string/jumbo v0, "startSendingSatellitePointingInfo"

    return-object v0

    .line 436
    :pswitch_2c
    const-string/jumbo v0, "requestSatelliteCapabilities"

    return-object v0

    .line 432
    :pswitch_30
    const-string/jumbo v0, "requestIsSatelliteSupported"

    return-object v0

    .line 428
    :pswitch_34
    const-string/jumbo v0, "requestIsSatelliteEnabled"

    return-object v0

    .line 424
    :pswitch_38
    const-string/jumbo v0, "requestSatelliteEnabled"

    return-object v0

    .line 420
    :pswitch_3c
    const-string v0, "enableCellularModemWhileSatelliteModeIsOn"

    return-object v0

    .line 416
    :pswitch_3f
    const-string/jumbo v0, "requestSatelliteListeningEnabled"

    return-object v0

    .line 412
    :pswitch_43
    const-string/jumbo v0, "setSatelliteListener"

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
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

    .line 403
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1250
    const/16 v0, 0x10

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 487
    invoke-static {p1}, Landroid/telephony/satellite/stub/ISatellite$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 491
    const-string v0, "android.telephony.satellite.stub.ISatellite"

    .line 492
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 493
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    :cond_d
    packed-switch p1, :pswitch_data_18c

    .line 503
    packed-switch p1, :pswitch_data_192

    .line 677
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 499
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    return v1

    .line 668
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 670
    .local v2, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 671
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 672
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestTimeForNextSatelliteVisibility(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 673
    goto/16 :goto_18a

    .line 658
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 660
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v3

    .line 661
    .local v3, "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteCommunicationAllowedForCurrentLocation(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V

    .line 663
    goto/16 :goto_18a

    .line 648
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 650
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 651
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteModemState(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 653
    goto/16 :goto_18a

    .line 636
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_64
    sget-object v2, Landroid/telephony/satellite/stub/SatelliteDatagram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/satellite/stub/SatelliteDatagram;

    .line 638
    .local v2, "_arg0":Landroid/telephony/satellite/stub/SatelliteDatagram;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 640
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v4

    .line 641
    .local v4, "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->sendSatelliteDatagram(Landroid/telephony/satellite/stub/SatelliteDatagram;ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 643
    goto/16 :goto_18a

    .line 628
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/SatelliteDatagram;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 629
    .local v2, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->pollPendingSatelliteDatagrams(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 631
    goto/16 :goto_18a

    .line 618
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 620
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v3

    .line 621
    .local v3, "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 622
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteProvisioned(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V

    .line 623
    goto/16 :goto_18a

    .line 608
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 611
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->deprovisionSatelliteService(Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 613
    goto/16 :goto_18a

    .line 596
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 598
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 600
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v4

    .line 601
    .restart local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->provisionSatelliteService(Ljava/lang/String;[BLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 603
    goto/16 :goto_18a

    .line 588
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 589
    .local v2, "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->stopSendingSatellitePointingInfo(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 591
    goto/16 :goto_18a

    .line 580
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 581
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->startSendingSatellitePointingInfo(Lcom/android/internal/telephony/IIntegerConsumer;)V

    .line 583
    goto/16 :goto_18a

    .line 570
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 572
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;

    move-result-object v3

    .line 573
    .local v3, "_arg1":Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteCapabilities(Lcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;)V

    .line 575
    goto/16 :goto_18a

    .line 560
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Landroid/telephony/satellite/stub/ISatelliteCapabilitiesConsumer;
    :pswitch_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 562
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v3

    .line 563
    .local v3, "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 564
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteSupported(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V

    .line 565
    goto :goto_18a

    .line 550
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v2

    .line 552
    .restart local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IBooleanConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IBooleanConsumer;

    move-result-object v3

    .line 553
    .restart local v3    # "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestIsSatelliteEnabled(Lcom/android/internal/telephony/IIntegerConsumer;Lcom/android/internal/telephony/IBooleanConsumer;)V

    .line 555
    goto :goto_18a

    .line 538
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IIntegerConsumer;
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IBooleanConsumer;
    :pswitch_13a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 540
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 542
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v4

    .line 543
    .restart local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteEnabled(ZZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 545
    goto :goto_18a

    .line 528
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_151
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 530
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v3

    .line 531
    .local v3, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2, v3}, Landroid/telephony/satellite/stub/ISatellite$Stub;->enableCellularModemWhileSatelliteModeIsOn(ZLcom/android/internal/telephony/IIntegerConsumer;)V

    .line 533
    goto :goto_18a

    .line 516
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_164
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 518
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 520
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v4

    .line 521
    .restart local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/satellite/stub/ISatellite$Stub;->requestSatelliteListeningEnabled(ZILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 523
    goto :goto_18a

    .line 508
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_17b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/satellite/stub/ISatelliteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/satellite/stub/ISatelliteListener;

    move-result-object v2

    .line 509
    .local v2, "_arg0":Landroid/telephony/satellite/stub/ISatelliteListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v2}, Landroid/telephony/satellite/stub/ISatellite$Stub;->setSatelliteListener(Landroid/telephony/satellite/stub/ISatelliteListener;)V

    .line 511
    nop

    .line 680
    .end local v2    # "_arg0":Landroid/telephony/satellite/stub/ISatelliteListener;
    :goto_18a
    return v1

    nop

    :pswitch_data_18c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_164
        :pswitch_151
        :pswitch_13a
        :pswitch_123
        :pswitch_10c
        :pswitch_f4
        :pswitch_e4
        :pswitch_d4
        :pswitch_bc
        :pswitch_a8
        :pswitch_90
        :pswitch_80
        :pswitch_64
        :pswitch_4c
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method
