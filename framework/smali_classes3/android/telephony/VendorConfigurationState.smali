.class public Landroid/telephony/VendorConfigurationState;
.super Ljava/lang/Object;
.source "VendorConfigurationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONFIGURATION_CA_ENABLED:Ljava/lang/String; = "CA_ENABLED"

.field public static final CONFIGURATION_EGPRS_SUPPORT:Ljava/lang/String; = "EGPRS_SUPPORT"

.field public static final CONFIGURATION_FRAMEWORK_READY:Ljava/lang/String; = "FW_READY"

.field public static final CONFIGURATION_ISCTC:Ljava/lang/String; = "IS_CTC"

.field public static final CONFIGURATION_LTE_CS_CAPA:Ljava/lang/String; = "LTE_CS_CAPA"

.field public static final CONFIGURATION_MSIM_SUBMODE:Ljava/lang/String; = "MSIM_SUBMODE"

.field public static final CONFIGURATION_REJECT_INFO_FOR_SIM_TRANSFER:Ljava/lang/String; = "REJECT_INFO_FOR_SIM_TRANSFER"

.field public static final CONFIGURATION_SUPPORTED_NRCA:Ljava/lang/String; = "SUPPORTED_NRCA"

.field public static final CONFIGURATION_SUPPORTED_RAT:Ljava/lang/String; = "SUPPORTED_RAT"

.field public static final CONFIGURATION_SUPPORT_LTE_CAPA_OPTION_C:Ljava/lang/String; = "SUPPORT_LTE_CAPA_OPTION_C"

.field public static final CONFIGURATION_VOLTE_E911CALL:Ljava/lang/String; = "VOLTE_911_CALL"

.field public static final CONFIGURATION_WFC_DEFAULT_SPN:Ljava/lang/String; = "WFC_DEFAULT_SPN"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VendorConfigurationState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFrameWorkReady:Ljava/lang/String;

.field private mIsCaEnabled:Ljava/lang/String;

.field private mIsCtc:Ljava/lang/String;

.field private mLteCsCapa:Ljava/lang/String;

.field private mMsimSubmode:Ljava/lang/String;

.field private mPhoneId:I

.field private mRejectInfoForSimTransfer:Ljava/lang/String;

.field private mSupportEgprs:Ljava/lang/String;

.field private mSupportLteCapaOptionC:Ljava/lang/String;

.field private mSupportedNrca:Ljava/lang/String;

.field private mSupportedRat:Ljava/lang/String;

.field private mVolte911Call:Ljava/lang/String;

.field private mWfcDefaultSpn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 170
    new-instance v0, Landroid/telephony/VendorConfigurationState$1;

    invoke-direct {v0}, Landroid/telephony/VendorConfigurationState$1;-><init>()V

    sput-object v0, Landroid/telephony/VendorConfigurationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "phoneId"    # I

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Landroid/telephony/VendorConfigurationState;->mPhoneId:I

    .line 91
    const-string v0, "0"

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/telephony/VendorConfigurationState;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/VendorConfigurationState;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Landroid/telephony/VendorConfigurationState;->copyFrom(Landroid/telephony/VendorConfigurationState;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/VendorConfigurationState;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/VendorConfigurationState;

    .line 115
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 118
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 122
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 123
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 124
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 125
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getLteCsCapa()I
    .registers 3

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "capa":I
    :try_start_1
    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 291
    goto :goto_a

    .line 290
    :catch_9
    move-exception v1

    .line 292
    :goto_a
    return v0
.end method

.method public getMsimSubmode()I
    .registers 3

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "mode":I
    :try_start_1
    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 308
    goto :goto_a

    .line 307
    :catch_9
    move-exception v1

    .line 309
    :goto_a
    return v0
.end method

.method public getRejectInfoForSimTransfer()Ljava/lang/String;
    .registers 2

    .line 341
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportEgprs()Z
    .registers 3

    .line 242
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSupportedNrca()Z
    .registers 3

    .line 317
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSupportedRat()I
    .registers 3

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, "rat":I
    :try_start_1
    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_7} :catch_9

    move v0, v1

    .line 254
    goto :goto_a

    .line 253
    :catch_9
    move-exception v1

    .line 255
    :goto_a
    return v0
.end method

.method public getVolte911Call()Z
    .registers 3

    .line 271
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getWfcDefaultSpn()Ljava/lang/String;
    .registers 2

    .line 333
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    return-object v0
.end method

.method public isCaEnabled()Z
    .registers 3

    .line 279
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCtc()Z
    .registers 3

    .line 263
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFrameWorkReady()Z
    .registers 3

    .line 234
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportLteCapaOptionC()Z
    .registers 3

    .line 325
    const-string v0, "1"

    iget-object v1, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCaEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "enabled"    # Ljava/lang/String;

    .line 283
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 204
    const-string v0, "FW_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 205
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setFrameWorkReady(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 206
    :cond_15
    const-string v0, "EGPRS_SUPPORT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 207
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportEgprs(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 208
    :cond_2a
    const-string v0, "SUPPORTED_RAT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 209
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportedRat(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 210
    :cond_3f
    const-string v0, "IS_CTC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 211
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setIsCtc(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 212
    :cond_54
    const-string v0, "VOLTE_911_CALL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 213
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setVolte911Call(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 214
    :cond_69
    const-string v0, "CA_ENABLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 215
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setCaEnabled(Ljava/lang/String;)V

    goto/16 :goto_f5

    .line 216
    :cond_7e
    const-string v0, "LTE_CS_CAPA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 217
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setLteCsCapa(Ljava/lang/String;)V

    goto :goto_f5

    .line 218
    :cond_92
    const-string v0, "MSIM_SUBMODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 219
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setMsimSubmode(Ljava/lang/String;)V

    goto :goto_f5

    .line 220
    :cond_a6
    const-string v0, "SUPPORTED_NRCA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 221
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportedNrca(Ljava/lang/String;)V

    goto :goto_f5

    .line 222
    :cond_ba
    const-string v0, "SUPPORT_LTE_CAPA_OPTION_C"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 223
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setSupportLteCapaOptionC(Ljava/lang/String;)V

    goto :goto_f5

    .line 224
    :cond_ce
    const-string v0, "REJECT_INFO_FOR_SIM_TRANSFER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 225
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setRejectInfoForSimTransfer(Ljava/lang/String;)V

    goto :goto_f5

    .line 226
    :cond_e2
    const-string v0, "WFC_DEFAULT_SPN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 227
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-virtual {p0, p2}, Landroid/telephony/VendorConfigurationState;->setWfcDefaultSpn(Ljava/lang/String;)V

    .line 231
    :cond_f5
    :goto_f5
    return-void
.end method

.method public setFrameWorkReady(Ljava/lang/String;)V
    .registers 2
    .param p1, "ready"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setIsCtc(Ljava/lang/String;)V
    .registers 2
    .param p1, "isctc"    # Ljava/lang/String;

    .line 267
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setLteCsCapa(Ljava/lang/String;)V
    .registers 2
    .param p1, "status"    # Ljava/lang/String;

    .line 296
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setMsimSubmode(Ljava/lang/String;)V
    .registers 2
    .param p1, "mode"    # Ljava/lang/String;

    .line 300
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setRejectInfoForSimTransfer(Ljava/lang/String;)V
    .registers 2
    .param p1, "rejectInfo"    # Ljava/lang/String;

    .line 337
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setSupportEgprs(Ljava/lang/String;)V
    .registers 2
    .param p1, "support"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSupportLteCapaOptionC(Ljava/lang/String;)V
    .registers 2
    .param p1, "lteCapaOptionC"    # Ljava/lang/String;

    .line 321
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setSupportedNrca(Ljava/lang/String;)V
    .registers 2
    .param p1, "nrcaStatus"    # Ljava/lang/String;

    .line 313
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setSupportedRat(Ljava/lang/String;)V
    .registers 2
    .param p1, "rat"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setVolte911Call(Ljava/lang/String;)V
    .registers 2
    .param p1, "isvolte911call"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setWfcDefaultSpn(Ljava/lang/String;)V
    .registers 2
    .param p1, "wfcDefaultSpn"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 186
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Vendor Configuration state - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v1, "FrameWorkReady: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v1, ", SupportEgprs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v1, ", SupportedRat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, ", IsCtc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v1, ", IsVolte911Call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v1, ", IsCaEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, ", LteCsCapa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v1, ", MsimSubmode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v1, ", SupportedNrca: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v1, ", SupportLteCapaOptionC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v1, ", RejectInfoForSimTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v1, ", WfcDefaultSpn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mFrameWorkReady:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportEgprs:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedRat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCtc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mVolte911Call:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mIsCaEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mLteCsCapa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mMsimSubmode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportedNrca:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mSupportLteCapaOptionC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mRejectInfoForSimTransfer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/telephony/VendorConfigurationState;->mWfcDefaultSpn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void
.end method
