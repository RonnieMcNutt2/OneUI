.class public final Lcom/android/internal/net/KnoxVpnProfile;
.super Ljava/lang/Object;
.source "KnoxVpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ANDROID_BC_PROVIDER:Ljava/lang/String; = "AndroidKeyStoreBCWorkaroundProvider"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/net/KnoxVpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_NULL_PROXY_INFO:Ljava/lang/String; = "\u0000\u0000\u0000\u0000"

.field static final LIST_DELIMITER:Ljava/lang/String; = ","

.field public static final PROXY_MANUAL:I = 0x1

.field public static final PROXY_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KnoxVpnProfile"

.field public static final TYPE_IKEV2_IPSEC_PSK:I = 0x7

.field public static final TYPE_IKEV2_IPSEC_RSA:I = 0x8

.field public static final TYPE_IKEV2_IPSEC_USER_PASS:I = 0x6

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x8

.field public static final TYPE_PPTP:I = 0x0

.field static final VALUE_DELIMITER:Ljava/lang/String; = "\u0000"

.field private static final VPN_KEYPAIR_PROVIDER:Ljava/lang/String; = "AndroidKeyStore"

.field private static final VPN_SECRET_KEY:Ljava/lang/String; = "VpnSecretKey"


# instance fields
.field public areAuthParamsInline:Z

.field public dnsServers:Ljava/lang/String;

.field public ipSecCACertValue:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public isBypassable:Z

.field public isIpsecSecretIvParams:Ljava/lang/String;

.field public isMetered:Z

.field public isPFS:Z

.field public isPasswordIvParams:Ljava/lang/String;

.field public final isRestrictedToTestNetworks:Z

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field private mAllowedAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxMtu:I

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public ocspServerUrl:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public proxy:Landroid/net/ProxyInfo;

.field public routes:Ljava/lang/String;

.field public transient saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 578
    new-instance v0, Lcom/android/internal/net/KnoxVpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/KnoxVpnProfile$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/KnoxVpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    .line 119
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    .line 129
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    .line 165
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 168
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    .line 179
    const/16 v4, 0x550

    iput v4, p0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    .line 182
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_83

    move v0, v2

    goto :goto_84

    :cond_83
    move v0, v1

    :goto_84
    iput-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b2

    move v0, v2

    goto :goto_b3

    :cond_b2
    move v0, v1

    :goto_b3
    iput-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z

    .line 216
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 218
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e0

    move v1, v2

    :cond_e0
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/KnoxVpnProfile;-><init>(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isRestrictedToTestNetworks"    # Z

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    .line 119
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    .line 122
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    .line 128
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    .line 129
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    .line 165
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 166
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    .line 179
    const/16 v2, 0x550

    iput v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    .line 182
    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z

    .line 193
    iput-object p1, p0, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    .line 194
    iput-boolean p2, p0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    .line 195
    return-void
.end method

.method private static byteArrayToInt([B)I
    .registers 5
    .param p0, "b"    # [B

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_12

    .line 765
    rsub-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 766
    .local v2, "shift":I
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 764
    .end local v2    # "shift":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 768
    .end local v1    # "i":I
    :cond_12
    return v0
.end method

.method private static bytes2Hex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .line 597
    if-nez p0, :cond_5

    .line 598
    const-string v0, ""

    return-object v0

    .line 600
    :cond_5
    const-string v0, "0123456789ABCDEF"

    .line 601
    .local v0, "HEX":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 602
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_31

    .line 603
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v5, p0, v2

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 605
    .end local v2    # "i":I
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/KnoxVpnProfile;
    .registers 18
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .line 302
    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 303
    return-object v2

    .line 306
    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_190

    move-object/from16 v4, p1

    :try_start_c
    invoke-direct {v0, v4, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v3, "\u0000"

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "values":[Ljava/lang/String;
    array-length v3, v0

    const/16 v5, 0x1d

    const/16 v6, 0x17

    const/16 v7, 0x12

    const/16 v8, 0x1c

    if-lt v3, v7, :cond_24

    array-length v3, v0

    if-le v3, v6, :cond_2b

    :cond_24
    array-length v3, v0

    if-eq v3, v8, :cond_2b

    array-length v3, v0

    if-eq v3, v5, :cond_2b

    .line 313
    return-object v2

    .line 317
    :cond_2b
    array-length v3, v0

    if-lt v3, v5, :cond_35

    .line 318
    aget-object v3, v0, v8

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .local v3, "isRestrictedToTestNetworks":Z
    goto :goto_36

    .line 320
    .end local v3    # "isRestrictedToTestNetworks":Z
    :cond_35
    const/4 v3, 0x0

    .line 323
    .restart local v3    # "isRestrictedToTestNetworks":Z
    :goto_36
    new-instance v5, Lcom/android/internal/net/KnoxVpnProfile;

    invoke-direct {v5, v1, v3}, Lcom/android/internal/net/KnoxVpnProfile;-><init>(Ljava/lang/String;Z)V

    .line 324
    .local v5, "profile":Lcom/android/internal/net/KnoxVpnProfile;
    const/4 v9, 0x0

    aget-object v10, v0, v9

    iput-object v10, v5, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    .line 325
    const/4 v10, 0x1

    aget-object v11, v0, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    .line 326
    if-ltz v11, :cond_18d

    const/16 v12, 0x8

    if-le v11, v12, :cond_51

    goto/16 :goto_18d

    .line 329
    :cond_51
    const/4 v11, 0x2

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    .line 330
    const/4 v11, 0x3

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    .line 331
    const/4 v11, 0x4

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 332
    const/4 v11, 0x5

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    .line 333
    const/4 v11, 0x6

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    .line 334
    const/4 v11, 0x7

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    .line 335
    aget-object v11, v0, v12

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    .line 336
    const/16 v11, 0x9

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 337
    const/16 v11, 0xa

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 338
    const/16 v11, 0xb

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 339
    const/16 v11, 0xc

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 340
    const/16 v11, 0xd

    aget-object v11, v0, v11

    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 341
    array-length v11, v0
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_96} :catch_18e

    const/16 v12, 0xe

    const-string v13, ""

    if-le v11, v12, :cond_9f

    :try_start_9c
    aget-object v11, v0, v12

    goto :goto_a0

    :cond_9f
    move-object v11, v13

    :goto_a0
    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 343
    array-length v11, v0

    const/16 v12, 0xf

    if-le v11, v12, :cond_aa

    aget-object v11, v0, v12

    goto :goto_ab

    :cond_aa
    move-object v11, v13

    :goto_ab
    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 344
    array-length v11, v0

    const/16 v12, 0x10

    if-le v11, v12, :cond_bd

    aget-object v11, v0, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_be

    :cond_bd
    move v11, v9

    :goto_be
    iput-boolean v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    .line 347
    array-length v11, v0

    const/16 v12, 0x11

    if-le v11, v12, :cond_c8

    aget-object v11, v0, v12

    goto :goto_c9

    :cond_c8
    move-object v11, v13

    :goto_c9
    iput-object v11, v5, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 348
    array-length v11, v0

    if-le v11, v7, :cond_d1

    aget-object v7, v0, v7

    goto :goto_d2

    :cond_d1
    move-object v7, v13

    :goto_d2
    iput-object v7, v5, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 350
    array-length v7, v0

    const/16 v11, 0x13

    if-le v7, v11, :cond_136

    .line 351
    array-length v7, v0

    if-le v7, v11, :cond_df

    aget-object v7, v0, v11

    goto :goto_e0

    :cond_df
    move-object v7, v13

    .line 352
    .local v7, "host":Ljava/lang/String;
    :goto_e0
    array-length v11, v0

    const/16 v12, 0x14

    if-le v11, v12, :cond_e8

    aget-object v11, v0, v12

    goto :goto_e9

    :cond_e8
    move-object v11, v13

    .line 353
    .local v11, "port":Ljava/lang/String;
    :goto_e9
    array-length v12, v0

    const/16 v14, 0x15

    if-le v12, v14, :cond_f1

    aget-object v12, v0, v14

    goto :goto_f2

    :cond_f1
    move-object v12, v13

    .line 354
    .local v12, "exclList":Ljava/lang/String;
    :goto_f2
    array-length v14, v0

    const/16 v15, 0x16

    if-le v14, v15, :cond_fa

    aget-object v14, v0, v15

    goto :goto_fb

    :cond_fa
    move-object v14, v13

    .line 355
    .local v14, "pacFileUrl":Ljava/lang/String;
    :goto_fb
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_11f

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_11f

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10e

    goto :goto_11f

    .line 360
    :cond_10e
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_136

    .line 361
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_136

    .line 356
    :cond_11f
    :goto_11f
    nop

    .line 357
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_128

    .line 358
    move v15, v9

    goto :goto_12c

    :cond_128
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 359
    :goto_12c
    invoke-static {v12}, Lcom/android/net/module/util/ProxyUtils;->exclusionStringAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 357
    invoke-static {v7, v15, v9}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 366
    .end local v7    # "host":Ljava/lang/String;
    .end local v11    # "port":Ljava/lang/String;
    .end local v12    # "exclList":Ljava/lang/String;
    .end local v14    # "pacFileUrl":Ljava/lang/String;
    :cond_136
    :goto_136
    array-length v7, v0

    if-lt v7, v8, :cond_176

    .line 367
    aget-object v6, v0, v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 368
    const/16 v6, 0x18

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    .line 369
    const/16 v6, 0x19

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    .line 370
    const/16 v6, 0x1a

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    .line 371
    const/16 v6, 0x1b

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    .line 372
    array-length v6, v0

    if-le v6, v8, :cond_174

    aget-object v13, v0, v8

    :cond_174
    iput-object v13, v5, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    .line 377
    :cond_176
    iget-object v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_189

    iget-object v6, v5, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_187

    goto :goto_189

    :cond_187
    const/4 v9, 0x0

    goto :goto_18a

    :cond_189
    :goto_189
    move v9, v10

    :goto_18a
    iput-boolean v9, v5, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_18c} :catch_18e

    .line 378
    return-object v5

    .line 327
    :cond_18d
    :goto_18d
    return-object v2

    .line 379
    .end local v0    # "values":[Ljava/lang/String;
    .end local v3    # "isRestrictedToTestNetworks":Z
    .end local v5    # "profile":Lcom/android/internal/net/KnoxVpnProfile;
    :catch_18e
    move-exception v0

    goto :goto_193

    :catch_190
    move-exception v0

    move-object/from16 v4, p1

    .line 382
    :goto_193
    return-object v2
.end method

.method public static decrypt(Lcom/android/internal/net/KnoxVpnProfile;)V
    .registers 8
    .param p0, "profile"    # Lcom/android/internal/net/KnoxVpnProfile;

    .line 721
    const-string v0, "AndroidKeyStoreBCWorkaroundProvider"

    iget-object v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "KnoxVpnProfile"

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_2e

    .line 751
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This profile was not encrypted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 723
    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    :try_start_2f
    invoke-static {v1}, Lcom/android/internal/net/KnoxVpnProfile;->getSecretKey(Z)Ljava/security/Key;

    move-result-object v1

    .line 724
    .local v1, "secretKey":Ljava/security/Key;
    if-eqz v1, :cond_85

    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, "isSetBCProvider":Z
    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    .line 727
    .local v4, "expectedProvider":Ljava/security/Provider;
    if-nez v4, :cond_40

    .line 728
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 729
    const/4 v3, 0x1

    .line 731
    :cond_40
    iget-object v5, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_54

    .line 732
    iget-object v5, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/internal/net/KnoxVpnProfile;->doDecrypt(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 733
    .local v5, "ret":Ljava/lang/String;
    if-eqz v5, :cond_54

    .line 734
    iput-object v5, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 737
    .end local v5    # "ret":Ljava/lang/String;
    :cond_54
    iget-object v5, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_68

    .line 738
    iget-object v5, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/android/internal/net/KnoxVpnProfile;->doDecrypt(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 739
    .restart local v5    # "ret":Ljava/lang/String;
    if-eqz v5, :cond_68

    .line 740
    iput-object v5, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 743
    .end local v5    # "ret":Ljava/lang/String;
    :cond_68
    if-eqz v3, :cond_85

    .line 744
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6d} :catch_6e

    goto :goto_85

    .line 747
    .end local v1    # "secretKey":Ljava/security/Key;
    .end local v3    # "isSetBCProvider":Z
    .end local v4    # "expectedProvider":Ljava/security/Provider;
    :catch_6e
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while decrypting profile: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_85
    :goto_85
    nop

    .line 753
    :goto_86
    return-void
.end method

.method private static doDecrypt(Ljava/security/Key;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "secretKey"    # Ljava/security/Key;
    .param p1, "encryptedBase64"    # Ljava/lang/String;
    .param p2, "ivHexBase64"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 645
    .local v1, "encryptedBuffer":[B
    new-instance v2, Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 646
    .local v2, "ivHexStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/net/KnoxVpnProfile;->hex2Bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 647
    .local v3, "ivBuffer":[B
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 649
    .local v4, "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v5, "AES/CBC/PKCS7Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 652
    .local v5, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v5, v0, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 653
    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 655
    .local v6, "decryptedBuffer":[B
    new-instance v7, Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_35} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_35} :catch_36

    return-object v0

    .line 656
    .end local v1    # "encryptedBuffer":[B
    .end local v2    # "ivHexStr":Ljava/lang/String;
    .end local v3    # "ivBuffer":[B
    .end local v4    # "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "decryptedBuffer":[B
    :catch_36
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decrypt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnProfile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    const/4 v1, 0x0

    return-object v1
.end method

.method private static doEncrypt(Ljava/security/Key;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p0, "secretKey"    # Ljava/security/Key;
    .param p1, "plainValue"    # Ljava/lang/String;

    .line 619
    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 622
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 623
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 624
    .local v1, "plainBuffer":[B
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 625
    .local v3, "encryptedBuffer":[B
    invoke-static {v3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 627
    .local v4, "encryptedBase64":Ljava/lang/String;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v5

    const-class v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v5, v6}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljavax/crypto/spec/IvParameterSpec;

    .line 628
    .local v5, "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v5}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v6

    .line 629
    .local v6, "ivBuffer":[B
    invoke-static {v6}, Lcom/android/internal/net/KnoxVpnProfile;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v7

    .line 630
    .local v7, "ivHexStr":Ljava/lang/String;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-static {v8, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 632
    .local v2, "ivHexBase64":Ljava/lang/String;
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v8
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_3f} :catch_40
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3f} :catch_40

    return-object v8

    .line 633
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "plainBuffer":[B
    .end local v2    # "ivHexBase64":Ljava/lang/String;
    .end local v3    # "encryptedBuffer":[B
    .end local v4    # "encryptedBase64":Ljava/lang/String;
    .end local v5    # "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v6    # "ivBuffer":[B
    .end local v7    # "ivHexStr":Ljava/lang/String;
    :catch_40
    move-exception v0

    .line 636
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encrypt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnProfile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 638
    const/4 v1, 0x0

    return-object v1
.end method

.method private static encrypt(Lcom/android/internal/net/KnoxVpnProfile;)V
    .registers 6
    .param p0, "profile"    # Lcom/android/internal/net/KnoxVpnProfile;

    .line 698
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 699
    :cond_10
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/net/KnoxVpnProfile;->getSecretKey(Z)Ljava/security/Key;

    move-result-object v1

    .line 700
    .local v1, "secretKey":Ljava/security/Key;
    if-eqz v1, :cond_48

    .line 701
    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    .line 702
    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/net/KnoxVpnProfile;->doEncrypt(Ljava/security/Key;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "ret":[Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 704
    aget-object v4, v2, v3

    iput-object v4, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 705
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    .line 708
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_30
    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    .line 709
    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/net/KnoxVpnProfile;->doEncrypt(Ljava/security/Key;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 710
    .restart local v2    # "ret":[Ljava/lang/String;
    if-eqz v2, :cond_48

    .line 711
    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 712
    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    .line 717
    .end local v1    # "secretKey":Ljava/security/Key;
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_48
    return-void
.end method

.method private static getSecretKey(Z)Ljava/security/Key;
    .registers 12
    .param p0, "generate"    # Z

    .line 667
    const-string v0, "KnoxVpnProfile"

    const-string v1, "AndroidKeyStore"

    const/4 v2, 0x0

    .line 670
    .local v2, "secretKey":Ljava/security/Key;
    :try_start_5
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 671
    .local v3, "keyStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_68

    .line 672
    const-string v5, "VpnSecretKey"

    if-eqz p0, :cond_62

    :try_start_11
    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v6
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_68

    if-nez v6, :cond_62

    .line 674
    :try_start_17
    const-string v6, "AES"

    invoke-static {v6, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 676
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v6, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "CBC"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 679
    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "PKCS7Padding"

    aput-object v8, v7, v10

    .line 681
    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v6

    .line 682
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v6

    .line 676
    invoke-virtual {v1, v6}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 683
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_43} :catch_44

    .line 687
    .end local v1    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    goto :goto_62

    .line 684
    :catch_44
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/Exception;
    :try_start_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_62
    :goto_62
    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_66} :catch_68

    move-object v2, v0

    .line 693
    goto :goto_86

    .line 690
    .end local v3    # "keyStore":Ljava/security/KeyStore;
    :catch_68
    move-exception v1

    .line 691
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 694
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_86
    return-object v2
.end method

.method private static hex2Bytes(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hex"    # Ljava/lang/String;

    .line 609
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 610
    .local v0, "len":I
    new-array v1, v0, [B

    .line 611
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_24

    .line 612
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 611
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 614
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method private static intToByteArray(I)[B
    .registers 3
    .param p0, "integer"    # I

    .line 756
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 757
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 758
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 759
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static isLegacyType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 454
    packed-switch p0, :pswitch_data_8

    .line 460
    const/4 v0, 0x1

    return v0

    .line 458
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isValidLockdownLegacyVpnProfile()Z
    .registers 2

    .line 465
    iget v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    invoke-static {v0}, Lcom/android/internal/net/KnoxVpnProfile;->isLegacyType(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/net/KnoxVpnProfile;->isServerAddressNumeric()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/internal/net/KnoxVpnProfile;->hasDns()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 466
    invoke-virtual {p0}, Lcom/android/internal/net/KnoxVpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 465
    :goto_1d
    return v0
.end method

.method private isValidLockdownPlatformVpnProfile()Z
    .registers 2

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public static validateAllowedAlgorithms(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p0, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 526
    .local v1, "alg":Ljava/lang/String;
    const-string v2, "\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 530
    .end local v1    # "alg":Ljava/lang/String;
    goto :goto_4

    .line 527
    .restart local v1    # "alg":Ljava/lang/String;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Algorithm contained illegal (\'\u0000\' or \',\') character"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    .end local v1    # "alg":Ljava/lang/String;
    :cond_29
    return-void
.end method


# virtual methods
.method public areDnsAddressesNumeric()Z
    .registers 6

    .line 510
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    const-string v2, " +"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_b
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 511
    .local v4, "dnsServer":Ljava/lang/String;
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_19

    .line 510
    nop

    .end local v4    # "dnsServer":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 515
    :cond_16
    nop

    .line 516
    const/4 v0, 0x1

    return v0

    .line 513
    :catch_19
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 592
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .registers 6

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z

    const-string v4, ""

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    goto :goto_29

    :cond_28
    move-object v3, v4

    :goto_29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    goto :goto_38

    :cond_37
    move-object v3, v4

    :goto_38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v2, :cond_112

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d0

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_d1

    :cond_d0
    move-object v3, v4

    :goto_d1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 433
    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_fc

    .line 434
    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/net/module/util/ProxyUtils;->exclusionListAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_fd

    .line 435
    :cond_fc
    nop

    .line 432
    :goto_fd
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_117

    .line 438
    :cond_112
    const-string v2, "\u0000\u0000\u0000\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :goto_117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public encode(Z)[B
    .registers 4
    .param p1, "encryptRequired"    # Z

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encode: encrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    if-eqz p1, :cond_1d

    .line 393
    invoke-static {p0}, Lcom/android/internal/net/KnoxVpnProfile;->encrypt(Lcom/android/internal/net/KnoxVpnProfile;)V

    .line 395
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/net/KnoxVpnProfile;->encode()[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 546
    instance-of v0, p1, Lcom/android/internal/net/KnoxVpnProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 547
    return v1

    .line 550
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/KnoxVpnProfile;

    .line 551
    .local v0, "other":Lcom/android/internal/net/KnoxVpnProfile;
    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    .line 552
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    iget v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    if-ne v2, v3, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    .line 554
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    .line 555
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    .line 556
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    .line 557
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    .line 558
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    .line 559
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    iget-boolean v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    if-ne v2, v3, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 561
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 562
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 563
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 564
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 565
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 566
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 567
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 568
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    .line 569
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    iget-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    iget-boolean v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    if-ne v2, v3, :cond_df

    iget-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    iget-boolean v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    if-ne v2, v3, :cond_df

    iget v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    iget v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    if-ne v2, v3, :cond_df

    iget-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    iget-boolean v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    if-ne v2, v3, :cond_df

    iget-boolean v2, p0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    iget-boolean v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    if-ne v2, v3, :cond_df

    const/4 v1, 0x1

    goto :goto_e0

    :cond_df
    nop

    .line 551
    :goto_e0
    return v1
.end method

.method public getAllowedAlgorithms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDns()Z
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 26

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    iget v2, v0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    .line 537
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    .line 539
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-boolean v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-boolean v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    .line 540
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    iget-object v1, v0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    move-object/from16 v23, v1

    move-object/from16 v1, v24

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Object;

    move-result-object v1

    .line 536
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isServerAddressNumeric()Z
    .registers 3

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_8

    .line 498
    nop

    .line 499
    const/4 v0, 0x1

    return v0

    .line 496
    :catch_8
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method public isTypeValidForLockdown()Z
    .registers 2

    .line 489
    iget v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isValidLockdownProfile()Z
    .registers 2

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/net/KnoxVpnProfile;->isTypeValidForLockdown()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 483
    invoke-direct {p0}, Lcom/android/internal/net/KnoxVpnProfile;->isValidLockdownLegacyVpnProfile()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/internal/net/KnoxVpnProfile;->isValidLockdownPlatformVpnProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 482
    :goto_15
    return v0
.end method

.method public setAllowedAlgorithms(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "allowedAlgorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/net/KnoxVpnProfile;->validateAllowedAlgorithms(Ljava/util/List;)V

    .line 254
    iput-object p1, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    .line 255
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 259
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->mppe:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->saveLogin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->mAllowedAlgorithms:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 278
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isBypassable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 279
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isMetered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPFS:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isPasswordIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isIpsecSecretIvParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->maxMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->areAuthParamsInline:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    iget-boolean v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->isRestrictedToTestNetworks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/net/KnoxVpnProfile;->ipSecCACertValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    return-void
.end method
