.class public abstract Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;
.super Landroid/os/Binder;
.source "IRemoteAppMode.java"

# interfaces
.implements Lcom/samsung/android/remoteappmode/IRemoteAppMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/IRemoteAppMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearAll:I = 0x11

.field static final TRANSACTION_createVirtualDisplay:I = 0x1

.field static final TRANSACTION_disableSendingUserPresentIntent:I = 0x1d

.field static final TRANSACTION_enableSendingUserPresentIntent:I = 0x1c

.field static final TRANSACTION_forceStopPackage:I = 0x16

.field static final TRANSACTION_getLastAnr:I = 0x1b

.field static final TRANSACTION_getProtocolVersion:I = 0x13

.field static final TRANSACTION_getSendingUserPresentExpiredTime:I = 0x20

.field static final TRANSACTION_isAllowed:I = 0x6

.field static final TRANSACTION_isSendingUserPresentEnabled:I = 0x1e

.field static final TRANSACTION_launchApplication:I = 0x5

.field static final TRANSACTION_moveDisplayToTop:I = 0x4

.field static final TRANSACTION_registerRemoteAppModeListener:I = 0xf

.field static final TRANSACTION_registerRotationChangeListener:I = 0xb

.field static final TRANSACTION_registerSecureAppChangedListener:I = 0x7

.field static final TRANSACTION_registerStartActivityInterceptListener:I = 0xd

.field static final TRANSACTION_registerTaskChangeListener:I = 0x9

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x2

.field static final TRANSACTION_resizeVirtualDisplay:I = 0x3

.field static final TRANSACTION_sendNotificationAction:I = 0x15

.field static final TRANSACTION_sendNotificationContent:I = 0x14

.field static final TRANSACTION_sendPendingIntent:I = 0x12

.field static final TRANSACTION_setLTWProtocolVersion:I = 0x18

.field static final TRANSACTION_setSendingUserPresentExpiredTime:I = 0x1f

.field static final TRANSACTION_startRFCommService:I = 0x19

.field static final TRANSACTION_stopRFCommService:I = 0x1a

.field static final TRANSACTION_transferTaskWithoutIntercept:I = 0x17

.field static final TRANSACTION_unregisterRemoteAppModeListener:I = 0x10

.field static final TRANSACTION_unregisterRotationChangeListener:I = 0xc

.field static final TRANSACTION_unregisterSecureAppChangedListener:I = 0x8

.field static final TRANSACTION_unregisterStartActivityInterceptListener:I = 0xe

.field static final TRANSACTION_unregisterTaskChangeListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 141
    const-string v0, "com.samsung.android.remoteappmode.IRemoteAppMode"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppMode;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 149
    if-nez p0, :cond_4

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_4
    const-string v0, "com.samsung.android.remoteappmode.IRemoteAppMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 153
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    if-eqz v1, :cond_14

    .line 154
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    return-object v1

    .line 156
    :cond_14
    new-instance v1, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 165
    packed-switch p0, :pswitch_data_80

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 293
    :pswitch_5
    const-string/jumbo v0, "getSendingUserPresentExpiredTime"

    return-object v0

    .line 289
    :pswitch_9
    const-string/jumbo v0, "setSendingUserPresentExpiredTime"

    return-object v0

    .line 285
    :pswitch_d
    const-string/jumbo v0, "isSendingUserPresentEnabled"

    return-object v0

    .line 281
    :pswitch_11
    const-string v0, "disableSendingUserPresentIntent"

    return-object v0

    .line 277
    :pswitch_14
    const-string v0, "enableSendingUserPresentIntent"

    return-object v0

    .line 273
    :pswitch_17
    const-string/jumbo v0, "getLastAnr"

    return-object v0

    .line 269
    :pswitch_1b
    const-string/jumbo v0, "stopRFCommService"

    return-object v0

    .line 265
    :pswitch_1f
    const-string/jumbo v0, "startRFCommService"

    return-object v0

    .line 261
    :pswitch_23
    const-string/jumbo v0, "setLTWProtocolVersion"

    return-object v0

    .line 257
    :pswitch_27
    const-string/jumbo v0, "transferTaskWithoutIntercept"

    return-object v0

    .line 253
    :pswitch_2b
    const-string v0, "forceStopPackage"

    return-object v0

    .line 249
    :pswitch_2e
    const-string/jumbo v0, "sendNotificationAction"

    return-object v0

    .line 245
    :pswitch_32
    const-string/jumbo v0, "sendNotificationContent"

    return-object v0

    .line 241
    :pswitch_36
    const-string/jumbo v0, "getProtocolVersion"

    return-object v0

    .line 237
    :pswitch_3a
    const-string/jumbo v0, "sendPendingIntent"

    return-object v0

    .line 233
    :pswitch_3e
    const-string v0, "clearAll"

    return-object v0

    .line 229
    :pswitch_41
    const-string/jumbo v0, "unregisterRemoteAppModeListener"

    return-object v0

    .line 225
    :pswitch_45
    const-string/jumbo v0, "registerRemoteAppModeListener"

    return-object v0

    .line 221
    :pswitch_49
    const-string/jumbo v0, "unregisterStartActivityInterceptListener"

    return-object v0

    .line 217
    :pswitch_4d
    const-string/jumbo v0, "registerStartActivityInterceptListener"

    return-object v0

    .line 213
    :pswitch_51
    const-string/jumbo v0, "unregisterRotationChangeListener"

    return-object v0

    .line 209
    :pswitch_55
    const-string/jumbo v0, "registerRotationChangeListener"

    return-object v0

    .line 205
    :pswitch_59
    const-string/jumbo v0, "unregisterTaskChangeListener"

    return-object v0

    .line 201
    :pswitch_5d
    const-string/jumbo v0, "registerTaskChangeListener"

    return-object v0

    .line 197
    :pswitch_61
    const-string/jumbo v0, "unregisterSecureAppChangedListener"

    return-object v0

    .line 193
    :pswitch_65
    const-string/jumbo v0, "registerSecureAppChangedListener"

    return-object v0

    .line 189
    :pswitch_69
    const-string/jumbo v0, "isAllowed"

    return-object v0

    .line 185
    :pswitch_6d
    const-string/jumbo v0, "launchApplication"

    return-object v0

    .line 181
    :pswitch_71
    const-string/jumbo v0, "moveDisplayToTop"

    return-object v0

    .line 177
    :pswitch_75
    const-string/jumbo v0, "resizeVirtualDisplay"

    return-object v0

    .line 173
    :pswitch_79
    const-string/jumbo v0, "releaseVirtualDisplay"

    return-object v0

    .line 169
    :pswitch_7d
    const-string v0, "createVirtualDisplay"

    return-object v0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2e
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
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

    .line 1259
    const/16 v0, 0x1f

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 304
    invoke-static {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.remoteappmode.IRemoteAppMode"

    .line 309
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 310
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    :cond_15
    packed-switch v8, :pswitch_data_2d6

    .line 320
    packed-switch v8, :pswitch_data_2dc

    .line 651
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 316
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    return v12

    .line 644
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getSendingUserPresentExpiredTime()J

    move-result-wide v0

    .line 645
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 647
    goto/16 :goto_2d4

    .line 636
    .end local v0    # "_result":J
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 637
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 638
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->setSendingUserPresentExpiredTime(J)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    goto/16 :goto_2d4

    .line 628
    .end local v0    # "_arg0":J
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->isSendingUserPresentEnabled()Z

    move-result v0

    .line 629
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 631
    goto/16 :goto_2d4

    .line 622
    .end local v0    # "_result":Z
    :pswitch_4b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->disableSendingUserPresentIntent()V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    goto/16 :goto_2d4

    .line 614
    :pswitch_53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->enableSendingUserPresentIntent(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    goto/16 :goto_2d4

    .line 603
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 605
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 606
    .local v1, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 607
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    goto/16 :goto_2d4

    .line 596
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :pswitch_79
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->stopRFCommService()V

    .line 597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    goto/16 :goto_2d4

    .line 590
    :pswitch_81
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->startRFCommService()V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    goto/16 :goto_2d4

    .line 582
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 583
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->setLTWProtocolVersion(I)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    goto/16 :goto_2d4

    .line 569
    .end local v0    # "_arg0":I
    :pswitch_98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 573
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 574
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->transferTaskWithoutIntercept(IILandroid/os/Bundle;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_2d4

    .line 560
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->forceStopPackage(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    goto/16 :goto_2d4

    .line 546
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_c2
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 548
    .local v0, "_arg0":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 550
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 551
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z

    move-result v3

    .line 553
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 555
    goto/16 :goto_2d4

    .line 536
    .end local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_result":Z
    :pswitch_e5
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 537
    .restart local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 539
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 541
    goto/16 :goto_2d4

    .line 528
    .end local v0    # "_arg0":Landroid/service/notification/StatusBarNotification;
    .end local v1    # "_result":Z
    :pswitch_fc
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getProtocolVersion()I

    move-result v0

    .line 529
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    goto/16 :goto_2d4

    .line 520
    .end local v0    # "_result":I
    :pswitch_108
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 521
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendPendingIntent(Landroid/app/PendingIntent;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_2d4

    .line 513
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    :pswitch_11b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->clearAll()V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    goto/16 :goto_2d4

    .line 504
    :pswitch_123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    move-result-object v0

    .line 505
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z

    move-result v1

    .line 507
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 509
    goto/16 :goto_2d4

    .line 492
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    .end local v1    # "_result":Z
    :pswitch_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    move-result-object v0

    .line 494
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z

    move-result v2

    .line 497
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 499
    goto/16 :goto_2d4

    .line 482
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-result-object v0

    .line 483
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z

    move-result v1

    .line 485
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 487
    goto/16 :goto_2d4

    .line 470
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    .end local v1    # "_result":Z
    :pswitch_16c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-result-object v0

    .line 472
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z

    move-result v2

    .line 475
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 477
    goto/16 :goto_2d4

    .line 460
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v0

    .line 461
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z

    move-result v1

    .line 463
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 465
    goto/16 :goto_2d4

    .line 446
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    .end local v1    # "_result":Z
    :pswitch_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v0

    .line 448
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 451
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 452
    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z

    move-result v3

    .line 453
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 455
    goto/16 :goto_2d4

    .line 436
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/IRotationChangeListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1bd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    move-result-object v0

    .line 437
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    move-result v1

    .line 439
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 441
    goto/16 :goto_2d4

    .line 424
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    .end local v1    # "_result":Z
    :pswitch_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    move-result-object v0

    .line 426
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    move-result v2

    .line 429
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    goto/16 :goto_2d4

    .line 414
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ITaskChangeListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    move-result-object v0

    .line 415
    .local v0, "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z

    move-result v1

    .line 417
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 419
    goto/16 :goto_2d4

    .line 402
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    .end local v1    # "_result":Z
    :pswitch_206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    move-result-object v0

    .line 404
    .restart local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z

    move-result v2

    .line 407
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    goto/16 :goto_2d4

    .line 394
    .end local v0    # "_arg0":Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_221
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->isAllowed()Z

    move-result v0

    .line 395
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    goto/16 :goto_2d4

    .line 380
    .end local v0    # "_result":Z
    :pswitch_22d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 386
    .local v2, "_arg2":Landroid/content/Intent;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 387
    .local v3, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 389
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    goto/16 :goto_2d4

    .line 371
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg3":Landroid/os/Bundle;
    :pswitch_250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->moveDisplayToTop(I)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_2d4

    .line 354
    .end local v0    # "_arg0":I
    :pswitch_25f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 356
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 358
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 360
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 362
    .local v15, "_arg3":I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/Surface;

    .line 363
    .local v16, "_arg4":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->resizeVirtualDisplay(IIIILandroid/view/Surface;)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto :goto_2d4

    .line 345
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Landroid/view/Surface;
    :pswitch_28b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->releaseVirtualDisplay(I)V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    goto :goto_2d4

    .line 325
    .end local v0    # "_arg0":I
    :pswitch_299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 327
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 329
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 331
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 333
    .local v16, "_arg3":I
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/Surface;

    .line 335
    .local v17, "_arg4":Landroid/view/Surface;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;

    move-result-object v18

    .line 336
    .local v18, "_arg5":Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I

    move-result v0

    .line 338
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    nop

    .line 654
    .end local v0    # "_result":I
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":Landroid/view/Surface;
    .end local v18    # "_arg5":Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;
    :goto_2d4
    return v12

    nop

    :pswitch_data_2d6
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_299
        :pswitch_28b
        :pswitch_25f
        :pswitch_250
        :pswitch_22d
        :pswitch_221
        :pswitch_206
        :pswitch_1ef
        :pswitch_1d4
        :pswitch_1bd
        :pswitch_19e
        :pswitch_187
        :pswitch_16c
        :pswitch_155
        :pswitch_13a
        :pswitch_123
        :pswitch_11b
        :pswitch_108
        :pswitch_fc
        :pswitch_e5
        :pswitch_c2
        :pswitch_b3
        :pswitch_98
        :pswitch_89
        :pswitch_81
        :pswitch_79
        :pswitch_62
        :pswitch_53
        :pswitch_4b
        :pswitch_3f
        :pswitch_30
        :pswitch_24
    .end packed-switch
.end method
