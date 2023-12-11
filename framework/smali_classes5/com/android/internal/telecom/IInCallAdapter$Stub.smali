.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_addConferenceParticipants:I = 0x17

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0x13

.field static final TRANSACTION_consultativeTransfer:I = 0x6

.field static final TRANSACTION_deflectCall:I = 0x2

.field static final TRANSACTION_disconnectCall:I = 0x7

.field static final TRANSACTION_enterBackgroundAudioProcessing:I = 0xd

.field static final TRANSACTION_exitBackgroundAudioProcessing:I = 0xe

.field static final TRANSACTION_handoverTo:I = 0x22

.field static final TRANSACTION_holdCall:I = 0x8

.field static final TRANSACTION_mergeConference:I = 0x15

.field static final TRANSACTION_mute:I = 0xa

.field static final TRANSACTION_phoneAccountSelected:I = 0x12

.field static final TRANSACTION_playDtmfTone:I = 0xf

.field static final TRANSACTION_postDialContinue:I = 0x11

.field static final TRANSACTION_pullExternalCall:I = 0x1a

.field static final TRANSACTION_putExtras:I = 0x1c

.field static final TRANSACTION_rejectCall:I = 0x3

.field static final TRANSACTION_rejectCallWithReason:I = 0x4

.field static final TRANSACTION_removeExtras:I = 0x1d

.field static final TRANSACTION_requestCallEndpointChange:I = 0xc

.field static final TRANSACTION_respondToRttRequest:I = 0x1f

.field static final TRANSACTION_sendCallEvent:I = 0x1b

.field static final TRANSACTION_sendRttRequest:I = 0x1e

.field static final TRANSACTION_setAudioRoute:I = 0xb

.field static final TRANSACTION_setRttMode:I = 0x21

.field static final TRANSACTION_splitFromConference:I = 0x14

.field static final TRANSACTION_stopDtmfTone:I = 0x10

.field static final TRANSACTION_stopRtt:I = 0x20

.field static final TRANSACTION_swapConference:I = 0x16

.field static final TRANSACTION_transferCall:I = 0x5

.field static final TRANSACTION_turnOffProximitySensor:I = 0x19

.field static final TRANSACTION_turnOnProximitySensor:I = 0x18

.field static final TRANSACTION_unholdCall:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 141
    :cond_4
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_14

    .line 143
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v1

    .line 145
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 154
    packed-switch p0, :pswitch_data_86

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 290
    :pswitch_5
    const-string/jumbo v0, "handoverTo"

    return-object v0

    .line 286
    :pswitch_9
    const-string/jumbo v0, "setRttMode"

    return-object v0

    .line 282
    :pswitch_d
    const-string/jumbo v0, "stopRtt"

    return-object v0

    .line 278
    :pswitch_11
    const-string/jumbo v0, "respondToRttRequest"

    return-object v0

    .line 274
    :pswitch_15
    const-string/jumbo v0, "sendRttRequest"

    return-object v0

    .line 270
    :pswitch_19
    const-string/jumbo v0, "removeExtras"

    return-object v0

    .line 266
    :pswitch_1d
    const-string/jumbo v0, "putExtras"

    return-object v0

    .line 262
    :pswitch_21
    const-string/jumbo v0, "sendCallEvent"

    return-object v0

    .line 258
    :pswitch_25
    const-string/jumbo v0, "pullExternalCall"

    return-object v0

    .line 254
    :pswitch_29
    const-string/jumbo v0, "turnOffProximitySensor"

    return-object v0

    .line 250
    :pswitch_2d
    const-string/jumbo v0, "turnOnProximitySensor"

    return-object v0

    .line 246
    :pswitch_31
    const-string v0, "addConferenceParticipants"

    return-object v0

    .line 242
    :pswitch_34
    const-string/jumbo v0, "swapConference"

    return-object v0

    .line 238
    :pswitch_38
    const-string/jumbo v0, "mergeConference"

    return-object v0

    .line 234
    :pswitch_3c
    const-string/jumbo v0, "splitFromConference"

    return-object v0

    .line 230
    :pswitch_40
    const-string v0, "conference"

    return-object v0

    .line 226
    :pswitch_43
    const-string/jumbo v0, "phoneAccountSelected"

    return-object v0

    .line 222
    :pswitch_47
    const-string/jumbo v0, "postDialContinue"

    return-object v0

    .line 218
    :pswitch_4b
    const-string/jumbo v0, "stopDtmfTone"

    return-object v0

    .line 214
    :pswitch_4f
    const-string/jumbo v0, "playDtmfTone"

    return-object v0

    .line 210
    :pswitch_53
    const-string v0, "exitBackgroundAudioProcessing"

    return-object v0

    .line 206
    :pswitch_56
    const-string v0, "enterBackgroundAudioProcessing"

    return-object v0

    .line 202
    :pswitch_59
    const-string/jumbo v0, "requestCallEndpointChange"

    return-object v0

    .line 198
    :pswitch_5d
    const-string/jumbo v0, "setAudioRoute"

    return-object v0

    .line 194
    :pswitch_61
    const-string/jumbo v0, "mute"

    return-object v0

    .line 190
    :pswitch_65
    const-string/jumbo v0, "unholdCall"

    return-object v0

    .line 186
    :pswitch_69
    const-string/jumbo v0, "holdCall"

    return-object v0

    .line 182
    :pswitch_6d
    const-string v0, "disconnectCall"

    return-object v0

    .line 178
    :pswitch_70
    const-string v0, "consultativeTransfer"

    return-object v0

    .line 174
    :pswitch_73
    const-string/jumbo v0, "transferCall"

    return-object v0

    .line 170
    :pswitch_77
    const-string/jumbo v0, "rejectCallWithReason"

    return-object v0

    .line 166
    :pswitch_7b
    const-string/jumbo v0, "rejectCall"

    return-object v0

    .line 162
    :pswitch_7f
    const-string v0, "deflectCall"

    return-object v0

    .line 158
    :pswitch_82
    const-string v0, "answerCall"

    return-object v0

    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_82
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
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

    .line 149
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    .line 1140
    const/16 v0, 0x21

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 301
    invoke-static {p1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    const-string v0, "com.android.internal.telecom.IInCallAdapter"

    .line 306
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 307
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    :cond_d
    packed-switch p1, :pswitch_data_23e

    .line 317
    packed-switch p1, :pswitch_data_244

    .line 646
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 313
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    return v1

    .line 633
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 635
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 637
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 639
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 640
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 641
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 642
    goto/16 :goto_23d

    .line 623
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 625
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 626
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 627
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    .line 628
    goto/16 :goto_23d

    .line 615
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 616
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    .line 618
    goto/16 :goto_23d

    .line 603
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 607
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 608
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 609
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 610
    goto/16 :goto_23d

    .line 595
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 596
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 597
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    .line 598
    goto/16 :goto_23d

    .line 585
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 587
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 588
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 590
    goto/16 :goto_23d

    .line 575
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 577
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 578
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 579
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 580
    goto/16 :goto_23d

    .line 561
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 567
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 568
    .restart local v5    # "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 569
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 570
    goto/16 :goto_23d

    .line 553
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    .line 556
    goto/16 :goto_23d

    .line 545
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 546
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    .line 548
    goto/16 :goto_23d

    .line 539
    .end local v2    # "_arg0":Z
    :pswitch_d0
    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    .line 540
    goto/16 :goto_23d

    .line 530
    :pswitch_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 533
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 534
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 535
    goto/16 :goto_23d

    .line 522
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    .line 525
    goto/16 :goto_23d

    .line 514
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 516
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    .line 517
    goto/16 :goto_23d

    .line 506
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 508
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    .line 509
    goto/16 :goto_23d

    .line 496
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_10b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    goto/16 :goto_23d

    .line 484
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 486
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 488
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 489
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 491
    goto/16 :goto_23d

    .line 474
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Z
    :pswitch_133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 476
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 477
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    .line 479
    goto/16 :goto_23d

    .line 466
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 467
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    .line 469
    goto/16 :goto_23d

    .line 456
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_14f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 458
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    .line 459
    .local v3, "_arg1":C
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    .line 461
    goto/16 :goto_23d

    .line 446
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":C
    :pswitch_160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 449
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 451
    goto/16 :goto_23d

    .line 438
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    .line 441
    goto/16 :goto_23d

    .line 428
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_17c
    sget-object v2, Landroid/telecom/CallEndpoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallEndpoint;

    .line 430
    .local v2, "_arg0":Landroid/telecom/CallEndpoint;
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ResultReceiver;

    .line 431
    .local v3, "_arg1":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->requestCallEndpointChange(Landroid/telecom/CallEndpoint;Landroid/os/ResultReceiver;)V

    .line 433
    goto/16 :goto_23d

    .line 418
    .end local v2    # "_arg0":Landroid/telecom/CallEndpoint;
    .end local v3    # "_arg1":Landroid/os/ResultReceiver;
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 420
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(ILjava/lang/String;)V

    .line 423
    goto/16 :goto_23d

    .line 410
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 411
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    .line 413
    goto/16 :goto_23d

    .line 402
    .end local v2    # "_arg0":Z
    :pswitch_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    .line 405
    goto/16 :goto_23d

    .line 394
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    .line 397
    goto/16 :goto_23d

    .line 386
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    .line 389
    goto :goto_23d

    .line 376
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 378
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 379
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    goto :goto_23d

    .line 364
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 368
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 369
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 371
    goto :goto_23d

    .line 354
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    .end local v4    # "_arg2":Z
    :pswitch_1f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 357
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCallWithReason(Ljava/lang/String;I)V

    .line 359
    goto :goto_23d

    .line 342
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 346
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 349
    goto :goto_23d

    .line 332
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_21b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 335
    .local v3, "_arg1":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 337
    goto :goto_23d

    .line 322
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/net/Uri;
    :pswitch_22e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 325
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    .line 327
    nop

    .line 649
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :goto_23d
    return v1

    :pswitch_data_23e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_22e
        :pswitch_21b
        :pswitch_208
        :pswitch_1f9
        :pswitch_1e2
        :pswitch_1d3
        :pswitch_1c8
        :pswitch_1bc
        :pswitch_1b0
        :pswitch_1a4
        :pswitch_194
        :pswitch_17c
        :pswitch_170
        :pswitch_160
        :pswitch_14f
        :pswitch_143
        :pswitch_133
        :pswitch_11b
        :pswitch_10b
        :pswitch_ff
        :pswitch_f3
        :pswitch_e7
        :pswitch_d5
        :pswitch_d0
        :pswitch_c4
        :pswitch_b8
        :pswitch_9c
        :pswitch_88
        :pswitch_78
        :pswitch_6c
        :pswitch_58
        :pswitch_4c
        :pswitch_3c
        :pswitch_1c
    .end packed-switch
.end method
