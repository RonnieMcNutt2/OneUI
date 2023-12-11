.class final Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
.super Landroid/util/NtpTrustedTime;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTrustedTimeImpl"
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 624
    invoke-direct {p0}, Landroid/util/NtpTrustedTime;-><init>()V

    .line 625
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    monitor-enter p0

    .line 719
    :try_start_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    .line 720
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 722
    .end local p0    # "this":Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
    :cond_11
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1c

    .line 723
    const-string v0, "NtpTrustedTime"

    const-string v1, "getConnectivityManager: no ConnectivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_1c
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 718
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static saturatedCast(J)I
    .registers 4
    .param p0, "longValue"    # J

    .line 753
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_b

    .line 754
    const v0, 0x7fffffff

    return v0

    .line 756
    :cond_b
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_15

    .line 757
    const/high16 v0, -0x80000000

    return v0

    .line 759
    :cond_15
    long-to-int v0, p0

    return v0
.end method


# virtual methods
.method public getDefaultNetwork()Landroid/net/Network;
    .registers 3

    .line 687
    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 688
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_8

    .line 689
    const/4 v1, 0x0

    return-object v1

    .line 691
    :cond_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method public getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
    .registers 13

    .line 632
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 633
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 636
    .local v1, "res":Landroid/content/res/Resources;
    nop

    .line 637
    const-string/jumbo v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "serverGlobalSetting":Ljava/lang/String;
    invoke-static {v2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 641
    .local v3, "settingsServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    if-eqz v3, :cond_1d

    .line 642
    move-object v4, v3

    .local v4, "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    goto/16 :goto_b8

    .line 644
    .end local v4    # "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :cond_1d
    nop

    .line 645
    const v4, 0x1070112

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "configValues":[Ljava/lang/String;
    const-string/jumbo v5, "ro.csc.countryiso_code"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "countyIsoCode":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.timezone"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 650
    .local v6, "timeZone":Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 651
    const v7, 0x1070115

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    .line 652
    :cond_45
    const-string v7, "HK"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 653
    const v7, 0x1070118

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    .line 654
    :cond_55
    const-string v7, "TW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 655
    const v7, 0x1070119

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    .line 656
    :cond_65
    const-string v7, "Asia"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 657
    const v7, 0x1070114

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    .line 658
    :cond_75
    const-string v7, "Europe"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 659
    const v7, 0x1070117

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    .line 660
    :cond_85
    const-string v7, "America"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 661
    const v7, 0x1070113

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_9c

    .line 663
    :cond_95
    const v7, 0x1070116

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 668
    :goto_9c
    :try_start_9c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v7, "configServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    array-length v8, v4

    const/4 v9, 0x0

    :goto_a3
    if-ge v9, v8, :cond_b2

    aget-object v10, v4, v9

    .line 670
    .local v10, "configValue":Ljava/lang/String;
    invoke-static {v10}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ae
    .catch Ljava/net/URISyntaxException; {:try_start_9c .. :try_end_ae} :catch_b5

    .line 669
    nop

    .end local v10    # "configValue":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    goto :goto_a3

    .line 672
    :cond_b2
    nop

    .line 675
    .local v7, "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    move-object v4, v7

    goto :goto_b8

    .line 673
    .end local v7    # "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :catch_b5
    move-exception v7

    .line 674
    .local v7, "e":Ljava/net/URISyntaxException;
    const/4 v8, 0x0

    move-object v4, v8

    .line 678
    .end local v5    # "countyIsoCode":Ljava/lang/String;
    .end local v6    # "timeZone":Ljava/lang/String;
    .end local v7    # "e":Ljava/net/URISyntaxException;
    .local v4, "ntpServerUris":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    :goto_b8
    nop

    .line 679
    const v5, 0x10e00f0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 680
    .local v5, "defaultTimeoutMillis":I
    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v6

    .line 682
    .local v6, "timeout":Ljava/time/Duration;
    if-nez v4, :cond_d0

    const/4 v7, 0x0

    goto :goto_d5

    :cond_d0
    new-instance v7, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v7, v4, v6}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    :goto_d5
    return-object v7
.end method

.method public isNetworkConnected(Landroid/net/Network;)Z
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .line 696
    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 697
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 698
    return v1

    .line 700
    :cond_8
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 711
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_17

    .line 715
    :cond_15
    const/4 v1, 0x1

    return v1

    .line 712
    :cond_17
    :goto_17
    const-string v3, "NtpTrustedTime"

    const-string v4, "getNetwork: no connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return v1
.end method

.method public queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
    .registers 19
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "ntpServerUri"    # Ljava/net/URI;
    .param p3, "timeout"    # Ljava/time/Duration;

    .line 733
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 734
    .local v0, "client":Landroid/net/SntpClient;
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "serverName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    .line 736
    const/16 v2, 0x7b

    goto :goto_17

    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->getPort()I

    move-result v2

    .line 737
    .local v2, "port":I
    :goto_17
    invoke-virtual/range {p3 .. p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v3

    .line 738
    .local v3, "timeoutMillis":I
    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 739
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v5

    .line 740
    .local v5, "ntpUncertaintyMillis":I
    invoke-virtual {v0}, Landroid/net/SntpClient;->getServerSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    .line 741
    .local v6, "ntpServerSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v14, Landroid/util/NtpTrustedTime$TimeResult;

    .line 742
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v10

    move-object v7, v14

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJILjava/net/InetSocketAddress;)V

    .line 741
    return-object v14

    .line 745
    .end local v5    # "ntpUncertaintyMillis":I
    .end local v6    # "ntpServerSocketAddress":Ljava/net/InetSocketAddress;
    :cond_47
    const/4 v5, 0x0

    return-object v5
.end method
