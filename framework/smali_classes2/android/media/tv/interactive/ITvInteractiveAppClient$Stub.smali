.class public abstract Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;
.super Landroid/os/Binder;
.source "ITvInteractiveAppClient.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAdBufferReady:I = 0x9

.field static final TRANSACTION_onAdRequest:I = 0x1d

.field static final TRANSACTION_onBiInteractiveAppCreated:I = 0x7

.field static final TRANSACTION_onBroadcastInfoRequest:I = 0x4

.field static final TRANSACTION_onCommandRequest:I = 0xa

.field static final TRANSACTION_onLayoutSurface:I = 0x3

.field static final TRANSACTION_onRemoveBroadcastInfo:I = 0x5

.field static final TRANSACTION_onRequestAvailableSpeeds:I = 0x14

.field static final TRANSACTION_onRequestCurrentChannelLcn:I = 0xf

.field static final TRANSACTION_onRequestCurrentChannelUri:I = 0xe

.field static final TRANSACTION_onRequestCurrentTvInputId:I = 0x12

.field static final TRANSACTION_onRequestCurrentVideoBounds:I = 0xd

.field static final TRANSACTION_onRequestScheduleRecording:I = 0x17

.field static final TRANSACTION_onRequestScheduleRecording2:I = 0x18

.field static final TRANSACTION_onRequestSigning:I = 0x1c

.field static final TRANSACTION_onRequestStartRecording:I = 0x15

.field static final TRANSACTION_onRequestStopRecording:I = 0x16

.field static final TRANSACTION_onRequestStreamVolume:I = 0x10

.field static final TRANSACTION_onRequestTimeShiftMode:I = 0x13

.field static final TRANSACTION_onRequestTrackInfoList:I = 0x11

.field static final TRANSACTION_onRequestTvRecordingInfo:I = 0x1a

.field static final TRANSACTION_onRequestTvRecordingInfoList:I = 0x1b

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionReleased:I = 0x2

.field static final TRANSACTION_onSessionStateChanged:I = 0x6

.field static final TRANSACTION_onSetTvRecordingInfo:I = 0x19

.field static final TRANSACTION_onSetVideoBounds:I = 0xc

.field static final TRANSACTION_onTeletextAppStateChanged:I = 0x8

.field static final TRANSACTION_onTimeShiftCommandRequest:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 113
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 121
    if-nez p0, :cond_4

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_4
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 125
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    if-eqz v1, :cond_14

    .line 126
    move-object v1, v0

    check-cast v1, Landroid/media/tv/interactive/ITvInteractiveAppClient;

    return-object v1

    .line 128
    :cond_14
    new-instance v1, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 137
    packed-switch p0, :pswitch_data_5c

    .line 257
    const/4 v0, 0x0

    return-object v0

    .line 253
    :pswitch_5
    const-string v0, "onAdRequest"

    return-object v0

    .line 249
    :pswitch_8
    const-string v0, "onRequestSigning"

    return-object v0

    .line 245
    :pswitch_b
    const-string v0, "onRequestTvRecordingInfoList"

    return-object v0

    .line 241
    :pswitch_e
    const-string v0, "onRequestTvRecordingInfo"

    return-object v0

    .line 237
    :pswitch_11
    const-string v0, "onSetTvRecordingInfo"

    return-object v0

    .line 233
    :pswitch_14
    const-string v0, "onRequestScheduleRecording2"

    return-object v0

    .line 229
    :pswitch_17
    const-string v0, "onRequestScheduleRecording"

    return-object v0

    .line 225
    :pswitch_1a
    const-string v0, "onRequestStopRecording"

    return-object v0

    .line 221
    :pswitch_1d
    const-string v0, "onRequestStartRecording"

    return-object v0

    .line 217
    :pswitch_20
    const-string v0, "onRequestAvailableSpeeds"

    return-object v0

    .line 213
    :pswitch_23
    const-string v0, "onRequestTimeShiftMode"

    return-object v0

    .line 209
    :pswitch_26
    const-string v0, "onRequestCurrentTvInputId"

    return-object v0

    .line 205
    :pswitch_29
    const-string v0, "onRequestTrackInfoList"

    return-object v0

    .line 201
    :pswitch_2c
    const-string v0, "onRequestStreamVolume"

    return-object v0

    .line 197
    :pswitch_2f
    const-string v0, "onRequestCurrentChannelLcn"

    return-object v0

    .line 193
    :pswitch_32
    const-string v0, "onRequestCurrentChannelUri"

    return-object v0

    .line 189
    :pswitch_35
    const-string v0, "onRequestCurrentVideoBounds"

    return-object v0

    .line 185
    :pswitch_38
    const-string v0, "onSetVideoBounds"

    return-object v0

    .line 181
    :pswitch_3b
    const-string v0, "onTimeShiftCommandRequest"

    return-object v0

    .line 177
    :pswitch_3e
    const-string v0, "onCommandRequest"

    return-object v0

    .line 173
    :pswitch_41
    const-string v0, "onAdBufferReady"

    return-object v0

    .line 169
    :pswitch_44
    const-string v0, "onTeletextAppStateChanged"

    return-object v0

    .line 165
    :pswitch_47
    const-string v0, "onBiInteractiveAppCreated"

    return-object v0

    .line 161
    :pswitch_4a
    const-string v0, "onSessionStateChanged"

    return-object v0

    .line 157
    :pswitch_4d
    const-string v0, "onRemoveBroadcastInfo"

    return-object v0

    .line 153
    :pswitch_50
    const-string v0, "onBroadcastInfoRequest"

    return-object v0

    .line 149
    :pswitch_53
    const-string v0, "onLayoutSurface"

    return-object v0

    .line 145
    :pswitch_56
    const-string v0, "onSessionReleased"

    return-object v0

    .line 141
    :pswitch_59
    const-string v0, "onSessionCreated"

    return-object v0

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 132
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1049
    const/16 v0, 0x1c

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 264
    invoke-static {p1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    const-string v14, "android.media.tv.interactive.ITvInteractiveAppClient"

    .line 269
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_13

    const v0, 0xffffff

    if-gt v12, v0, :cond_13

    .line 270
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    :cond_13
    packed-switch v12, :pswitch_data_29e

    .line 280
    move-object/from16 v10, p3

    packed-switch v12, :pswitch_data_2a4

    .line 604
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 276
    :pswitch_20
    move-object/from16 v10, p3

    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    return v15

    .line 595
    :pswitch_26
    sget-object v0, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/AdRequest;

    .line 597
    .local v0, "_arg0":Landroid/media/tv/AdRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 598
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdRequest(Landroid/media/tv/AdRequest;I)V

    .line 600
    goto/16 :goto_29c

    .line 579
    .end local v0    # "_arg0":Landroid/media/tv/AdRequest;
    .end local v1    # "_arg1":I
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 583
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 587
    .local v9, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 588
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 590
    goto/16 :goto_29c

    .line 569
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":[B
    .end local v16    # "_arg4":I
    :pswitch_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 572
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfoList(II)V

    .line 574
    goto/16 :goto_29c

    .line 559
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 562
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTvRecordingInfo(Ljava/lang/String;I)V

    .line 564
    goto/16 :goto_29c

    .line 547
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 549
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/media/tv/TvRecordingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvRecordingInfo;

    .line 551
    .local v1, "_arg1":Landroid/media/tv/TvRecordingInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 552
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetTvRecordingInfo(Ljava/lang/String;Landroid/media/tv/TvRecordingInfo;I)V

    .line 554
    goto/16 :goto_29c

    .line 525
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/media/tv/TvRecordingInfo;
    .end local v2    # "_arg2":I
    :pswitch_96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 527
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 529
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/net/Uri;

    .line 531
    .local v18, "_arg2":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 533
    .local v19, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 535
    .local v21, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 537
    .local v23, "_arg5":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Bundle;

    .line 539
    .local v24, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 540
    .local v25, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording2(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;JJILandroid/os/Bundle;I)V

    .line 542
    goto/16 :goto_29c

    .line 507
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/net/Uri;
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":J
    .end local v23    # "_arg5":I
    .end local v24    # "_arg6":Landroid/os/Bundle;
    .end local v25    # "_arg7":I
    :pswitch_dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 511
    .local v8, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    .line 513
    .local v9, "_arg2":Landroid/net/Uri;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/net/Uri;

    .line 515
    .local v10, "_arg3":Landroid/net/Uri;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 517
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 518
    .local v17, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestScheduleRecording(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/os/Bundle;I)V

    .line 520
    goto/16 :goto_29c

    .line 497
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/net/Uri;
    .end local v10    # "_arg3":Landroid/net/Uri;
    .end local v16    # "_arg4":Landroid/os/Bundle;
    .end local v17    # "_arg5":I
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 500
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStopRecording(Ljava/lang/String;I)V

    .line 502
    goto/16 :goto_29c

    .line 485
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 489
    .local v1, "_arg1":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 491
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStartRecording(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 492
    goto/16 :goto_29c

    .line 477
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/net/Uri;
    .end local v2    # "_arg2":I
    :pswitch_13e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestAvailableSpeeds(I)V

    .line 480
    goto/16 :goto_29c

    .line 469
    .end local v0    # "_arg0":I
    :pswitch_14a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 470
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTimeShiftMode(I)V

    .line 472
    goto/16 :goto_29c

    .line 461
    .end local v0    # "_arg0":I
    :pswitch_156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 462
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentTvInputId(I)V

    .line 464
    goto/16 :goto_29c

    .line 453
    .end local v0    # "_arg0":I
    :pswitch_162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 455
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestTrackInfoList(I)V

    .line 456
    goto/16 :goto_29c

    .line 445
    .end local v0    # "_arg0":I
    :pswitch_16e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestStreamVolume(I)V

    .line 448
    goto/16 :goto_29c

    .line 437
    .end local v0    # "_arg0":I
    :pswitch_17a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 438
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelLcn(I)V

    .line 440
    goto/16 :goto_29c

    .line 429
    .end local v0    # "_arg0":I
    :pswitch_186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentChannelUri(I)V

    .line 432
    goto/16 :goto_29c

    .line 421
    .end local v0    # "_arg0":I
    :pswitch_192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 422
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRequestCurrentVideoBounds(I)V

    .line 424
    goto/16 :goto_29c

    .line 411
    .end local v0    # "_arg0":I
    :pswitch_19e
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 413
    .local v0, "_arg0":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 414
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSetVideoBounds(Landroid/graphics/Rect;I)V

    .line 416
    goto/16 :goto_29c

    .line 399
    .end local v0    # "_arg0":Landroid/graphics/Rect;
    .end local v1    # "_arg1":I
    :pswitch_1b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 403
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTimeShiftCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 406
    goto/16 :goto_29c

    .line 387
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_1ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 391
    .restart local v1    # "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 392
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onCommandRequest(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 394
    goto/16 :goto_29c

    .line 377
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    :pswitch_1e2
    sget-object v0, Landroid/media/tv/AdBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/AdBuffer;

    .line 379
    .local v0, "_arg0":Landroid/media/tv/AdBuffer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onAdBufferReady(Landroid/media/tv/AdBuffer;I)V

    .line 382
    goto/16 :goto_29c

    .line 367
    .end local v0    # "_arg0":Landroid/media/tv/AdBuffer;
    .end local v1    # "_arg1":I
    :pswitch_1f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onTeletextAppStateChanged(II)V

    .line 372
    goto/16 :goto_29c

    .line 355
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_206
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 357
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 362
    goto/16 :goto_29c

    .line 343
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_21e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 347
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v11, v0, v1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionStateChanged(III)V

    .line 350
    goto/16 :goto_29c

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onRemoveBroadcastInfo(II)V

    .line 338
    goto :goto_29c

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_241
    sget-object v0, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/BroadcastInfoRequest;

    .line 325
    .local v0, "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v11, v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;I)V

    .line 328
    goto :goto_29c

    .line 307
    .end local v0    # "_arg0":Landroid/media/tv/BroadcastInfoRequest;
    .end local v1    # "_arg1":I
    :pswitch_254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 309
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 311
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 313
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 315
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 316
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onLayoutSurface(IIIII)V

    .line 318
    goto :goto_29c

    .line 299
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v10    # "_arg4":I
    :pswitch_276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v11, v0}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionReleased(I)V

    .line 302
    goto :goto_29c

    .line 285
    .end local v0    # "_arg0":I
    :pswitch_281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 289
    .local v1, "_arg1":Landroid/os/IBinder;
    sget-object v2, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputChannel;

    .line 291
    .local v2, "_arg2":Landroid/view/InputChannel;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 292
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient$Stub;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 294
    nop

    .line 607
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Landroid/view/InputChannel;
    .end local v3    # "_arg3":I
    :goto_29c
    return v15

    nop

    :pswitch_data_29e
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x1
        :pswitch_281
        :pswitch_276
        :pswitch_254
        :pswitch_241
        :pswitch_232
        :pswitch_21e
        :pswitch_206
        :pswitch_1f6
        :pswitch_1e2
        :pswitch_1ca
        :pswitch_1b2
        :pswitch_19e
        :pswitch_192
        :pswitch_186
        :pswitch_17a
        :pswitch_16e
        :pswitch_162
        :pswitch_156
        :pswitch_14a
        :pswitch_13e
        :pswitch_126
        :pswitch_116
        :pswitch_dc
        :pswitch_96
        :pswitch_7e
        :pswitch_6e
        :pswitch_5e
        :pswitch_3a
        :pswitch_26
    .end packed-switch
.end method
