.class public Landroid/telephony/data/ApnSetting$Builder;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlwaysOn:Z

.field private mApnName:Ljava/lang/String;

.field private mApnSetId:I

.field private mApnTypeBitmask:I

.field private mAuthType:I

.field private mCarrierEnabled:Z

.field private mCarrierId:I

.field private mEntryName:Ljava/lang/String;

.field private mId:I

.field private mLingeringNetworkTypeBitmask:J

.field private mMaxConns:I

.field private mMaxConnsTime:I

.field private mMmsProxyAddress:Ljava/lang/String;

.field private mMmsProxyPort:I

.field private mMmsc:Landroid/net/Uri;

.field private mModemCognitive:Z

.field private mMtuV4:I

.field private mMtuV6:I

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:I

.field private mNetworkTypeBitmask:I

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mProfileId:I

.field private mProtocol:I

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mRoamingProtocol:I

.field private mSkip464Xlat:I

.field private mUser:Ljava/lang/String;

.field private mWaitTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlwaysOn(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAlwaysOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApnName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmApnSetId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmApnTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthType(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierEnabled(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryName(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLingeringNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mLingeringNetworkTypeBitmask:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxConns(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxConnsTime(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMmsProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMmsProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMmsc(Landroid/telephony/data/ApnSetting$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModemCognitive(Landroid/telephony/data/ApnSetting$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtuV4(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV4:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMtuV6(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV6:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMvnoMatchData(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMvnoType(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkTypeBitmask(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOperatorNumeric(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileId(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProtocol(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyAddress(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyPort(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingProtocol(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkip464Xlat(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUser(Landroid/telephony/data/ApnSetting$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitTime(Landroid/telephony/data/ApnSetting$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 1868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    .line 1839
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    .line 1842
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    .line 1846
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    .line 1847
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    .line 1858
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    .line 1861
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    .line 1862
    iput v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    .line 1868
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/ApnSetting;
    .registers 4

    .line 2293
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit16 v0, v0, 0x7fff

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    .line 2296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_64

    .line 2299
    :cond_18
    iget v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2300
    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mms proxy("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") should be a hostname, not a url"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApnSetting"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2304
    .local v0, "mMmsProxyAddressUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2306
    .end local v0    # "mMmsProxyAddressUri":Landroid/net/Uri;
    :cond_5e
    new-instance v0, Landroid/telephony/data/ApnSetting;

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V

    return-object v0

    .line 2297
    :cond_64
    :goto_64
    return-object v1
.end method

.method public buildWithoutCheck()Landroid/telephony/data/ApnSetting;
    .registers 3

    .line 2316
    new-instance v0, Landroid/telephony/data/ApnSetting;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/ApnSetting;-><init>(Landroid/telephony/data/ApnSetting$Builder;Landroid/telephony/data/ApnSetting-IA;)V

    return-object v0
.end method

.method public setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "alwaysOn"    # Z

    .line 2281
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAlwaysOn:Z

    .line 2282
    return-object p0
.end method

.method public setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "apnName"    # Ljava/lang/String;

    .line 2010
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnName:Ljava/lang/String;

    .line 2011
    return-object p0
.end method

.method public setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "apnSetId"    # I

    .line 1988
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnSetId:I

    .line 1989
    return-object p0
.end method

.method public setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "apnTypeBitmask"    # I

    .line 2159
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mApnTypeBitmask:I

    .line 2160
    return-object p0
.end method

.method public setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "authType"    # I

    .line 2142
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mAuthType:I

    .line 2143
    return-object p0
.end method

.method public setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "carrierEnabled"    # Z

    .line 2209
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierEnabled:Z

    .line 2210
    return-object p0
.end method

.method public setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "carrierId"    # I

    .line 2258
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mCarrierId:I

    .line 2259
    return-object p0
.end method

.method public setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "entryName"    # Ljava/lang/String;

    .line 1999
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mEntryName:Ljava/lang/String;

    .line 2000
    return-object p0
.end method

.method public setId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 1877
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mId:I

    .line 1878
    return-object p0
.end method

.method public setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .param p1, "lingeringNetworkTypeBitmask"    # J

    .line 2233
    iput-wide p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mLingeringNetworkTypeBitmask:J

    .line 2234
    return-object p0
.end method

.method public setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "maxConns"    # I

    .line 1944
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConns:I

    .line 1945
    return-object p0
.end method

.method public setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "maxConnsTime"    # I

    .line 1966
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMaxConnsTime:I

    .line 1967
    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mmsProxy"    # Ljava/lang/String;

    .line 2097
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2098
    return-object p0
.end method

.method public setMmsProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .param p1, "mmsProxy"    # Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2086
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyAddress:Ljava/lang/String;

    .line 2087
    return-object p0
.end method

.method public setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mmsPort"    # I

    .line 2108
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsProxyPort:I

    .line 2109
    return-object p0
.end method

.method public setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mmsc"    # Landroid/net/Uri;

    .line 2064
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMmsc:Landroid/net/Uri;

    .line 2065
    return-object p0
.end method

.method public setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "modemCognitive"    # Z

    .line 1933
    iput-boolean p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mModemCognitive:Z

    .line 1934
    return-object p0
.end method

.method public setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mtuV4"    # I

    .line 1889
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV4:I

    .line 1890
    return-object p0
.end method

.method public setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mtuV6"    # I

    .line 1901
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMtuV6:I

    .line 1902
    return-object p0
.end method

.method public setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mvnoMatchData"    # Ljava/lang/String;

    .line 1977
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoMatchData:Ljava/lang/String;

    .line 1978
    return-object p0
.end method

.method public setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "mvnoType"    # I

    .line 2244
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mMvnoType:I

    .line 2245
    return-object p0
.end method

.method public setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "networkTypeBitmask"    # I

    .line 2220
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mNetworkTypeBitmask:I

    .line 2221
    return-object p0
.end method

.method public setOperatorNumeric(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .line 2172
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mOperatorNumeric:Ljava/lang/String;

    .line 2173
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .line 2131
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mPassword:Ljava/lang/String;

    .line 2132
    return-object p0
.end method

.method public setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .param p1, "isPersistent"    # Z

    .line 1923
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "profileId"    # I

    .line 1911
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProfileId:I

    .line 1912
    return-object p0
.end method

.method public setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "protocol"    # I

    .line 2185
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProtocol:I

    .line 2186
    return-object p0
.end method

.method public setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "proxy"    # Ljava/lang/String;

    .line 2042
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    .line 2043
    return-object p0
.end method

.method public setProxyAddress(Ljava/net/InetAddress;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 3
    .param p1, "proxy"    # Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2031
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->inetAddressToString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyAddress:Ljava/lang/String;

    .line 2032
    return-object p0
.end method

.method public setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "port"    # I

    .line 2053
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mProxyPort:I

    .line 2054
    return-object p0
.end method

.method public setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "roamingProtocol"    # I

    .line 2198
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mRoamingProtocol:I

    .line 2199
    return-object p0
.end method

.method public setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "skip464xlat"    # I

    .line 2269
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mSkip464Xlat:I

    .line 2270
    return-object p0
.end method

.method public setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .line 2119
    iput-object p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mUser:Ljava/lang/String;

    .line 2120
    return-object p0
.end method

.method public setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;
    .registers 2
    .param p1, "waitTime"    # I

    .line 1955
    iput p1, p0, Landroid/telephony/data/ApnSetting$Builder;->mWaitTime:I

    .line 1956
    return-object p0
.end method
