.class public final Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResultAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;,
        Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;,
        Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;
    }
.end annotation


# static fields
.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CIPHER_CCMP:I = 0x3

.field public static final CIPHER_GCMP_256:I = 0x4

.field public static final CIPHER_NONE:I = 0x0

.field public static final CIPHER_NO_GROUP_ADDRESSED:I = 0x1

.field public static final CIPHER_SMS4:I = 0x5

.field public static final CIPHER_TKIP:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final KEY_MGMT_EAP:I = 0x2

.field public static final KEY_MGMT_EAP_SHA256:I = 0x6

.field public static final KEY_MGMT_EAP_SUITE_B_192:I = 0xa

.field public static final KEY_MGMT_FILS_SHA256:I = 0xf

.field public static final KEY_MGMT_FILS_SHA384:I = 0x10

.field public static final KEY_MGMT_FT_EAP:I = 0x4

.field public static final KEY_MGMT_FT_PSK:I = 0x3

.field public static final KEY_MGMT_FT_SAE:I = 0xb

.field public static final KEY_MGMT_NONE:I = 0x0

.field public static final KEY_MGMT_OSEN:I = 0x7

.field public static final KEY_MGMT_OWE:I = 0x9

.field public static final KEY_MGMT_OWE_TRANSITION:I = 0xc

.field public static final KEY_MGMT_PSK:I = 0x1

.field public static final KEY_MGMT_PSK_SHA256:I = 0x5

.field public static final KEY_MGMT_SAE:I = 0x8

.field public static final KEY_MGMT_WAPI_CERT:I = 0xe

.field public static final KEY_MGMT_WAPI_PSK:I = 0xd

.field public static final PROTOCOL_NONE:I = 0x0

.field public static final PROTOCOL_OSEN:I = 0x3

.field public static final PROTOCOL_RSN:I = 0x2

.field public static final PROTOCOL_WAPI:I = 0x4

.field public static final PROTOCOL_WPA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemMobileWipsScanResultAdapter"

.field public static final UNSPECIFIED:I = -0x1

.field public static final WIFI_STANDARD_11AC:I = 0x5

.field public static final WIFI_STANDARD_11AX:I = 0x6

.field public static final WIFI_STANDARD_11N:I = 0x4

.field public static final WIFI_STANDARD_LEGACY:I = 0x1

.field public static final WIFI_STANDARD_UNKNOWN:I


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public anqpDomainId:I

.field public anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

.field public anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public capabilities:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I

.field public distanceSdCm:I

.field public flags:J

.field public frequency:I

.field public hessid:J

.field public ifaceName:Ljava/lang/String;

.field public informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

.field public is80211McRTTResponder:Z

.field public level:I

.field private mAffiliatedMloLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private mApMldMacAddress:Landroid/net/MacAddress;

.field private mApMloLinkId:I

.field private mWifiStandard:I

.field public numUsage:I

.field public operatorFriendlyName:Ljava/lang/CharSequence;

.field public radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

.field public seen:J

.field public timestamp:J

.field public untrusted:Z

.field public venueName:Ljava/lang/CharSequence;

.field public wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;


# direct methods
.method static bridge synthetic -$$Nest$fputmAffiliatedMloLinks(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApMldMacAddress(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmApMloLinkId(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 234
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    .line 590
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;)V
    .registers 4
    .param p1, "source"    # Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    .line 552
    if-eqz p1, :cond_8c

    .line 553
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 554
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->SSID:Ljava/lang/String;

    .line 555
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    .line 556
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->hessid:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->hessid:J

    .line 557
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpDomainId:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpDomainId:I

    .line 558
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    .line 559
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    .line 560
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    .line 561
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    .line 562
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    .line 563
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    .line 564
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    .line 565
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    .line 566
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    .line 567
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    .line 568
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    .line 569
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->seen:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->seen:J

    .line 570
    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->untrusted:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->untrusted:Z

    .line 571
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->numUsage:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->numUsage:I

    .line 572
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->venueName:Ljava/lang/CharSequence;

    .line 573
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 574
    iget-wide v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 575
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    .line 576
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    .line 577
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->ifaceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->ifaceName:Ljava/lang/String;

    .line 578
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 579
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    .line 580
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    if-eqz v0, :cond_86

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8a

    :cond_86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8a
    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    .line 583
    :cond_8c
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .registers 27
    .param p1, "wifiSsid"    # Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J

    .line 468
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    .line 469
    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 470
    if-eqz v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c

    :cond_1a
    const-string v4, "<unknown ssid>"

    :goto_1c
    iput-object v4, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->SSID:Ljava/lang/String;

    .line 471
    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    .line 472
    move-wide/from16 v5, p3

    iput-wide v5, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->hessid:J

    .line 473
    move/from16 v7, p5

    iput v7, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpDomainId:I

    .line 474
    if-eqz v2, :cond_3e

    .line 475
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    iput-object v8, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    .line 476
    new-instance v9, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    const v10, 0x506f9a

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v2}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;-><init>(II[B)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 480
    :cond_3e
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    .line 481
    move/from16 v9, p8

    iput v9, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    .line 482
    move/from16 v10, p9

    iput v10, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    .line 483
    move-wide/from16 v11, p10

    iput-wide v11, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    .line 484
    iput v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    .line 485
    iput v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    .line 486
    iput v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    .line 487
    iput v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    .line 488
    iput v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    .line 489
    const-wide/16 v13, 0x0

    iput-wide v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 490
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    .line 491
    iput-object v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 492
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .registers 12
    .param p1, "wifiSsid"    # Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    .line 496
    iput-object p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 497
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_15
    const-string v1, "<unknown ssid>"

    :goto_17
    iput-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->SSID:Ljava/lang/String;

    .line 498
    iput-object p2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    .line 499
    iput-object p3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    .line 500
    iput p4, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    .line 501
    iput p5, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    .line 502
    iput-wide p6, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    .line 503
    iput p8, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    .line 504
    iput p9, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    .line 505
    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    .line 506
    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    .line 507
    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    .line 508
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    .line 510
    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 511
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .registers 35
    .param p1, "wifiSsid"    # Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    .line 543
    invoke-direct/range {v0 .. v16}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 545
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    .line 546
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .registers 33
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z

    .line 516
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    .line 517
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->SSID:Ljava/lang/String;

    .line 518
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    .line 519
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->hessid:J

    .line 520
    move/from16 v5, p5

    iput v5, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpDomainId:I

    .line 521
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    .line 522
    move/from16 v7, p7

    iput v7, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    .line 523
    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    .line 524
    move-wide/from16 v9, p9

    iput-wide v9, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    .line 525
    move/from16 v11, p11

    iput v11, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    .line 526
    move/from16 v12, p12

    iput v12, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    .line 527
    move/from16 v13, p13

    iput v13, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    .line 528
    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    .line 529
    move/from16 v15, p15

    iput v15, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    .line 530
    if-eqz p16, :cond_49

    .line 531
    const-wide/16 v1, 0x2

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    goto :goto_4d

    .line 533
    :cond_49
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 535
    :goto_4d
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    .line 536
    iput-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 537
    return-void
.end method

.method public static is24GHz(I)Z
    .registers 2
    .param p0, "freq"    # I

    .line 646
    const/16 v0, 0x960

    if-le p0, v0, :cond_a

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static is5GHz(I)Z
    .registers 2
    .param p0, "freq"    # I

    .line 653
    const/16 v0, 0x1324

    if-le p0, v0, :cond_a

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static is6GHz(I)Z
    .registers 2
    .param p0, "freq"    # I

    .line 660
    const/16 v0, 0x1725

    if-le p0, v0, :cond_a

    const/16 v0, 0x1bd5

    if-ge p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static wifiStandardToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "standard"    # I

    .line 627
    packed-switch p0, :pswitch_data_14

    .line 639
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 635
    :pswitch_5
    const-string v0, "11ax"

    return-object v0

    .line 633
    :pswitch_8
    const-string v0, "11ac"

    return-object v0

    .line 631
    :pswitch_b
    const-string v0, "11n"

    return-object v0

    .line 629
    :pswitch_e
    const-string v0, "legacy"

    return-object v0

    .line 637
    :pswitch_11
    const-string v0, "unknown"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clearFlag(J)V
    .registers 7
    .param p1, "flag"    # J

    .line 693
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 694
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public getInformationElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;",
            ">;"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiStandard()I
    .registers 2

    .line 668
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    return v0
.end method

.method public is24GHz()Z
    .registers 2

    .line 706
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    invoke-static {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .registers 2

    .line 711
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    invoke-static {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public is6GHz()Z
    .registers 2

    .line 716
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    invoke-static {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->is6GHz(I)Z

    move-result v0

    return v0
.end method

.method public is80211mcResponder()Z
    .registers 5

    .line 697
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isPasspointNetwork()Z
    .registers 5

    .line 701
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public setFlag(J)V
    .registers 5
    .param p1, "flag"    # J

    .line 684
    iget-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    .line 685
    return-void
.end method

.method public setWifiStandard(I)V
    .registers 2
    .param p1, "standard"    # I

    .line 675
    iput p1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    .line 676
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 729
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 730
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<none>"

    .line 732
    .local v1, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 733
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    if-nez v3, :cond_13

    const-string v3, "<unknown ssid>"

    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 734
    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 735
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_22

    move-object v3, v1

    :cond_22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 736
    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 737
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_31

    move-object v3, v1

    :cond_31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 738
    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    .line 739
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 740
    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    .line 741
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 742
    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    .line 743
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 744
    const-string v2, ", distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    const-string v4, "?"

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_6b

    :cond_6a
    move-object v3, v4

    :goto_6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 745
    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    const-string v2, ", distanceSd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v6, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    if-eq v6, v5, :cond_82

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 747
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    const-string v2, ", passpoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 750
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9c

    const-string v2, "yes"

    goto :goto_9e

    :cond_9c
    const-string v2, "no"

    :goto_9e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    const-string v2, ", ChannelBandwidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 752
    const-string v2, ", centerFreq0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 753
    const-string v2, ", centerFreq1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 754
    const-string v2, ", standard: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    invoke-static {v3}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    const-string v2, ", 80211mcResponder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    const-wide/16 v8, 0x2

    and-long/2addr v2, v8

    cmp-long v2, v2, v6

    if-eqz v2, :cond_e2

    const-string v2, "is supported"

    goto :goto_e4

    :cond_e2
    const-string v2, "is not supported"

    :goto_e4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 757
    const-string v2, ", Radio Chain Infos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    const-string v2, ", interface name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->ifaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    if-eqz v2, :cond_13b

    .line 760
    const-string v2, ", MLO Info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 761
    const-string v3, " AP MLD MAC Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 762
    invoke-virtual {v3}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 763
    const-string v3, ", AP MLO Link-Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 764
    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    if-ne v3, v5, :cond_128

    .line 765
    const-string v3, "Unspecified"

    goto :goto_12c

    :cond_128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 764
    :goto_12c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 766
    const-string v3, ", AP MLO Affiliated Links: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 768
    :cond_13b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 782
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 783
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->wifiSsid:Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 786
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    :goto_12
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->hessid:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 791
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpDomainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 793
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->timestamp:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 796
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->distanceSdCm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->channelWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->centerFreq1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mWifiStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->seen:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 803
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->untrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->numUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->venueName:Ljava/lang/CharSequence;

    const-string v2, ""

    if-eqz v0, :cond_72

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_73

    :cond_72
    move-object v0, v2

    :goto_73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7f

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :cond_7f
    move-object v0, v2

    :goto_80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    iget-wide v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->flags:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 808
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$InformationElement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 810
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpLines:Ljava/util/List;

    if-eqz v0, :cond_b0

    .line 811
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_99
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpLines:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_af

    .line 813
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpLines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .end local v0    # "i":I
    :cond_af
    goto :goto_b3

    .line 816
    :cond_b0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    :goto_b3
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    if-eqz v0, :cond_e3

    .line 819
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 820
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;

    array-length v3, v0

    move v4, v1

    :goto_bf
    if-ge v4, v3, :cond_e6

    aget-object v5, v0, v4

    .line 821
    .local v5, "element":Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;->getVendorId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;->getElementId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;->getPayload()[B

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 820
    .end local v5    # "element":Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$AnqpInformationElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    .line 827
    :cond_e3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 830
    :cond_e6
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    if-eqz v0, :cond_108

    .line 831
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_ef
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    array-length v3, v1

    if-ge v0, v3, :cond_107

    .line 833
    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter$RadioChainInfo;->level:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    .end local v0    # "i":I
    :cond_107
    goto :goto_10b

    .line 837
    :cond_108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    :goto_10b
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->ifaceName:Ljava/lang/String;

    if-eqz v0, :cond_113

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_113
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 841
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMldMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 842
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mApMloLinkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 844
    return-void
.end method
