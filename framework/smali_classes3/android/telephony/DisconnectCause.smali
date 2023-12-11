.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final ALREADY_DIALING:I = 0x48

.field public static final ANSWERED_ELSEWHERE:I = 0x34

.field public static final BUSY:I = 0x4

.field public static final CALLING_DISABLED:I = 0x4a

.field public static final CALL_BARRED:I = 0x14

.field public static final CALL_PULLED:I = 0x33

.field public static final CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CONGESTION:I = 0x5

.field public static final CS_CALL_NOT_AVAILABLE:I = 0xf9

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DATA_DISABLED:I = 0x36

.field public static final DATA_LIMIT_REACHED:I = 0x37

.field public static final DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final DIALED_MMI:I = 0x27

.field public static final DIAL_LOW_BATTERY:I = 0x3e

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final INCOMING_AUTO_REJECTED:I = 0x51

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_NUMBER:I = 0x7

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final LOW_BATTERY:I = 0x3d

.field public static final MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final MEDIA_TIMEOUT:I = 0x4d

.field public static final MMI:I = 0x6

.field public static final NORMAL:I = 0x2

.field public static final NORMAL_UNSPECIFIED:I = 0x41

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_POSSIBLE_TO_START_VIDEO_CALL:I = 0xc8

.field public static final NOT_VALID:I = -0x1

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final SATELLITE_ENABLED:I = 0x52

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final TIMED_OUT:I = 0xd

.field public static final TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final WIFI_LOST:I = 0x3b


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "cause"    # I

    .line 396
    sparse-switch p0, :sswitch_data_110

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 565
    :sswitch_17
    const-string v0, "CS_CALL_NOT_AVAILABLE"

    return-object v0

    .line 561
    :sswitch_1a
    const-string v0, "NOT_POSSIBLE_TO_START_VIDEO_CALL"

    return-object v0

    .line 558
    :sswitch_1d
    const-string v0, "SATELLITE_ENABLED"

    return-object v0

    .line 556
    :sswitch_20
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    .line 554
    :sswitch_23
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    .line 552
    :sswitch_26
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    .line 550
    :sswitch_29
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    .line 548
    :sswitch_2c
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    .line 546
    :sswitch_2f
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    .line 544
    :sswitch_32
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    .line 542
    :sswitch_35
    const-string v0, "CALLING_DISABLED"

    return-object v0

    .line 540
    :sswitch_38
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    .line 538
    :sswitch_3b
    const-string v0, "ALREADY_DIALING"

    return-object v0

    .line 536
    :sswitch_3e
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    .line 494
    :sswitch_41
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 492
    :sswitch_44
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    .line 490
    :sswitch_47
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    .line 488
    :sswitch_4a
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    .line 486
    :sswitch_4d
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 534
    :sswitch_50
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    .line 532
    :sswitch_53
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    .line 530
    :sswitch_56
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    .line 528
    :sswitch_59
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    .line 526
    :sswitch_5c
    const-string v0, "LOW_BATTERY"

    return-object v0

    .line 524
    :sswitch_5f
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    .line 522
    :sswitch_62
    const-string v0, "WIFI_LOST"

    return-object v0

    .line 520
    :sswitch_65
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 518
    :sswitch_68
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    .line 516
    :sswitch_6b
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    .line 514
    :sswitch_6e
    const-string v0, "DATA_DISABLED"

    return-object v0

    .line 512
    :sswitch_71
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    .line 510
    :sswitch_74
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    .line 508
    :sswitch_77
    const-string v0, "CALL_PULLED"

    return-object v0

    .line 506
    :sswitch_7a
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    .line 504
    :sswitch_7d
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    .line 484
    :sswitch_80
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 482
    :sswitch_83
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 480
    :sswitch_86
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 502
    :sswitch_89
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    .line 500
    :sswitch_8c
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    .line 498
    :sswitch_8f
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    .line 478
    :sswitch_92
    const-string v0, "EXITED_ECM"

    return-object v0

    .line 476
    :sswitch_95
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    .line 474
    :sswitch_98
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    .line 472
    :sswitch_9b
    const-string v0, "DIALED_MMI"

    return-object v0

    .line 470
    :sswitch_9e
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    .line 468
    :sswitch_a1
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 496
    :sswitch_a4
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 466
    :sswitch_a7
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 464
    :sswitch_aa
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 462
    :sswitch_ad
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    .line 460
    :sswitch_b0
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 458
    :sswitch_b3
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 456
    :sswitch_b6
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    .line 454
    :sswitch_b9
    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 452
    :sswitch_bc
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 450
    :sswitch_bf
    const-string v0, "CDMA_DROP"

    return-object v0

    .line 448
    :sswitch_c2
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 446
    :sswitch_c5
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 444
    :sswitch_c8
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    .line 442
    :sswitch_cb
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    .line 440
    :sswitch_ce
    const-string v0, "CS_RESTRICTED"

    return-object v0

    .line 438
    :sswitch_d1
    const-string v0, "FDN_BLOCKED"

    return-object v0

    .line 436
    :sswitch_d4
    const-string v0, "CALL_BARRED"

    return-object v0

    .line 434
    :sswitch_d7
    const-string v0, "ICC_ERROR"

    return-object v0

    .line 432
    :sswitch_da
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 430
    :sswitch_dd
    const-string v0, "POWER_OFF"

    return-object v0

    .line 428
    :sswitch_e0
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    .line 426
    :sswitch_e3
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    .line 424
    :sswitch_e6
    const-string v0, "LOST_SIGNAL"

    return-object v0

    .line 422
    :sswitch_e9
    const-string v0, "TIMED_OUT"

    return-object v0

    .line 420
    :sswitch_ec
    const-string v0, "SERVER_ERROR"

    return-object v0

    .line 418
    :sswitch_ef
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    .line 416
    :sswitch_f2
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 414
    :sswitch_f5
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    .line 412
    :sswitch_f8
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    .line 410
    :sswitch_fb
    const-string v0, "INVALID_NUMBER"

    return-object v0

    .line 408
    :sswitch_fe
    const-string v0, "CONGESTION"

    return-object v0

    .line 406
    :sswitch_101
    const-string v0, "BUSY"

    return-object v0

    .line 404
    :sswitch_104
    const-string v0, "LOCAL"

    return-object v0

    .line 402
    :sswitch_107
    const-string v0, "NORMAL"

    return-object v0

    .line 400
    :sswitch_10a
    const-string v0, "INCOMING_MISSED"

    return-object v0

    .line 398
    :sswitch_10d
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    :sswitch_data_110
    .sparse-switch
        0x0 -> :sswitch_10d
        0x1 -> :sswitch_10a
        0x2 -> :sswitch_107
        0x3 -> :sswitch_104
        0x4 -> :sswitch_101
        0x5 -> :sswitch_fe
        0x7 -> :sswitch_fb
        0x8 -> :sswitch_f8
        0x9 -> :sswitch_f5
        0xa -> :sswitch_f2
        0xb -> :sswitch_ef
        0xc -> :sswitch_ec
        0xd -> :sswitch_e9
        0xe -> :sswitch_e6
        0xf -> :sswitch_e3
        0x10 -> :sswitch_e0
        0x11 -> :sswitch_dd
        0x12 -> :sswitch_da
        0x13 -> :sswitch_d7
        0x14 -> :sswitch_d4
        0x15 -> :sswitch_d1
        0x16 -> :sswitch_ce
        0x17 -> :sswitch_cb
        0x18 -> :sswitch_c8
        0x19 -> :sswitch_c5
        0x1a -> :sswitch_c2
        0x1b -> :sswitch_bf
        0x1c -> :sswitch_bc
        0x1d -> :sswitch_b9
        0x1e -> :sswitch_b6
        0x1f -> :sswitch_b3
        0x20 -> :sswitch_b0
        0x21 -> :sswitch_ad
        0x22 -> :sswitch_aa
        0x23 -> :sswitch_a7
        0x24 -> :sswitch_a4
        0x25 -> :sswitch_a1
        0x26 -> :sswitch_9e
        0x27 -> :sswitch_9b
        0x28 -> :sswitch_98
        0x29 -> :sswitch_95
        0x2a -> :sswitch_92
        0x2b -> :sswitch_8f
        0x2c -> :sswitch_8c
        0x2d -> :sswitch_89
        0x2e -> :sswitch_86
        0x2f -> :sswitch_83
        0x30 -> :sswitch_80
        0x31 -> :sswitch_7d
        0x32 -> :sswitch_7a
        0x33 -> :sswitch_77
        0x34 -> :sswitch_74
        0x35 -> :sswitch_71
        0x36 -> :sswitch_6e
        0x37 -> :sswitch_6b
        0x39 -> :sswitch_68
        0x3a -> :sswitch_65
        0x3b -> :sswitch_62
        0x3c -> :sswitch_5f
        0x3d -> :sswitch_5c
        0x3e -> :sswitch_59
        0x3f -> :sswitch_56
        0x40 -> :sswitch_53
        0x41 -> :sswitch_50
        0x42 -> :sswitch_4d
        0x43 -> :sswitch_4a
        0x44 -> :sswitch_47
        0x45 -> :sswitch_44
        0x46 -> :sswitch_41
        0x47 -> :sswitch_3e
        0x48 -> :sswitch_3b
        0x49 -> :sswitch_38
        0x4a -> :sswitch_35
        0x4b -> :sswitch_32
        0x4c -> :sswitch_2f
        0x4d -> :sswitch_2c
        0x4e -> :sswitch_29
        0x4f -> :sswitch_26
        0x50 -> :sswitch_23
        0x51 -> :sswitch_20
        0x52 -> :sswitch_1d
        0xc8 -> :sswitch_1a
        0xf9 -> :sswitch_17
    .end sparse-switch
.end method
