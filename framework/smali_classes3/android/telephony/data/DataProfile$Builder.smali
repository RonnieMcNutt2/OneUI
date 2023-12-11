.class public final Landroid/telephony/data/DataProfile$Builder;
.super Ljava/lang/Object;
.source "DataProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnSetting:Landroid/telephony/data/ApnSetting;

.field private mAuthType:I

.field private mBearerBitmask:I

.field private mCid:I

.field private mEnabled:Z

.field private mMtuV4:I

.field private mMtuV6:I

.field private mPassword:Ljava/lang/String;

.field private mPersistent:Z

.field private mPreferred:Z

.field private mProfileId:I

.field private mProtocolType:I

.field private mRoamingProtocolType:I

.field private mSupportedApnTypesBitmask:I

.field private mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

.field private mType:I

.field private mUserName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmApnSetting(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/ApnSetting;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCid(Landroid/telephony/data/DataProfile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferred(Landroid/telephony/data/DataProfile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileId(Landroid/telephony/data/DataProfile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficDescriptor(Landroid/telephony/data/DataProfile$Builder;)Landroid/telephony/data/TrafficDescriptor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Landroid/telephony/data/DataProfile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 585
    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 588
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 612
    iput v0, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    .line 618
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/data/DataProfile;
    .registers 3

    .line 889
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_67

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_67

    .line 891
    new-instance v0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 892
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 893
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 894
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 895
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 896
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 897
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setModemCognitive(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 898
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 899
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 900
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 901
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 902
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 903
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 904
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 905
    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 909
    :cond_67
    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    if-nez v0, :cond_78

    iget-object v0, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    if-eqz v0, :cond_70

    goto :goto_78

    .line 910
    :cond_70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APN setting and traffic descriptor can\'t be both null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 914
    :cond_78
    :goto_78
    new-instance v0, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/data/DataProfile;-><init>(Landroid/telephony/data/DataProfile$Builder;Landroid/telephony/data/DataProfile-IA;)V

    return-object v0
.end method

.method public enable(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "isEnabled"    # Z

    .line 724
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mEnabled:Z

    .line 725
    return-object p0
.end method

.method public setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "apn"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApn:Ljava/lang/String;

    .line 647
    return-object p0
.end method

.method public setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "apnSetting"    # Landroid/telephony/data/ApnSetting;

    .line 865
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mApnSetting:Landroid/telephony/data/ApnSetting;

    .line 866
    return-object p0
.end method

.method public setAuthType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "authType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mAuthType:I

    .line 675
    return-object p0
.end method

.method public setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "bearerBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 767
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mBearerBitmask:I

    .line 768
    return-object p0
.end method

.method public setCid(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "cid"    # I

    .line 850
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mCid:I

    .line 851
    return-object p0
.end method

.method public setMtu(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 782
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 783
    return-object p0
.end method

.method public setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV4:I

    .line 797
    return-object p0
.end method

.method public setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "mtu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mMtuV6:I

    .line 811
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPassword:Ljava/lang/String;

    .line 703
    return-object p0
.end method

.method public setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "isPersistent"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPersistent:Z

    .line 839
    return-object p0
.end method

.method public setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "isPreferred"    # Z

    .line 823
    iput-boolean p1, p0, Landroid/telephony/data/DataProfile$Builder;->mPreferred:Z

    .line 824
    return-object p0
.end method

.method public setProfileId(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "profileId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProfileId:I

    .line 632
    return-object p0
.end method

.method public setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 660
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mProtocolType:I

    .line 661
    return-object p0
.end method

.method public setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "protocolType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mRoamingProtocolType:I

    .line 753
    return-object p0
.end method

.method public setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "supportedApnTypesBitmask"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mSupportedApnTypesBitmask:I

    .line 739
    return-object p0
.end method

.method public setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;

    .line 879
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mTrafficDescriptor:Landroid/telephony/data/TrafficDescriptor;

    .line 880
    return-object p0
.end method

.method public setType(I)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 713
    iput p1, p0, Landroid/telephony/data/DataProfile$Builder;->mType:I

    .line 714
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 688
    iput-object p1, p0, Landroid/telephony/data/DataProfile$Builder;->mUserName:Ljava/lang/String;

    .line 689
    return-object p0
.end method
