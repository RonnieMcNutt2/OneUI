.class public abstract Landroid/security/keystore2/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# static fields
.field private static final DEVICE_KEYMASTER:I = 0x1

.field private static final DEVICE_KEYMINT:I = 0x2

.field private static final UNINITIALIZE:I

.field private static mIsStrongBoxKeyMintDevice:I

.field private static mIsTEEKeyMintDevice:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput v0, Landroid/security/keystore2/KeymasterUtils;->mIsStrongBoxKeyMintDevice:I

    .line 48
    sput v0, Landroid/security/keystore2/KeymasterUtils;->mIsTEEKeyMintDevice:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .registers 9
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    .line 114
    const v0, 0x30000008

    sparse-switch p1, :sswitch_data_66

    goto :goto_64

    .line 128
    :sswitch_7
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 134
    const/4 v1, 0x0

    aget v1, p3, v1

    .line 135
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v2

    .line 136
    .local v2, "digestOutputSizeBits":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 141
    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_64

    .line 137
    :cond_1a
    new-instance v0, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    .end local v1    # "keymasterDigest":I
    .end local v2    # "digestOutputSizeBits":I
    :cond_37
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exactly one digest must be authorized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :sswitch_57
    const/16 v1, 0x20

    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 119
    const-wide/16 v1, 0x60

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 144
    :cond_64
    :goto_64
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        0x20 -> :sswitch_57
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method static getCurveName(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;
    .registers 3
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;

    .line 181
    const-string/jumbo v0, "secp224r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 182
    return-object v0

    .line 183
    :cond_a
    const-string/jumbo v0, "secp256r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 184
    return-object v0

    .line 185
    :cond_14
    const-string/jumbo v0, "secp384r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 186
    return-object v0

    .line 187
    :cond_1e
    const-string/jumbo v0, "secp521r1"

    invoke-static {p0, v0}, Landroid/security/keystore2/KeymasterUtils;->isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 188
    return-object v0

    .line 190
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method static getCurveSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 175
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 176
    .local v0, "parameters":Ljava/security/AlgorithmParameters;
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v1, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 177
    const-class v1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    return-object v1
.end method

.method static getDigestOutputSizeBits(I)I
    .registers 4
    .param p0, "keymasterDigest"    # I

    .line 55
    packed-switch p0, :pswitch_data_30

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :pswitch_1c
    const/16 v0, 0x200

    return v0

    .line 67
    :pswitch_1f
    const/16 v0, 0x180

    return v0

    .line 65
    :pswitch_22
    const/16 v0, 0x100

    return v0

    .line 63
    :pswitch_25
    const/16 v0, 0xe0

    return v0

    .line 61
    :pswitch_28
    const/16 v0, 0xa0

    return v0

    .line 59
    :pswitch_2b
    const/16 v0, 0x80

    return v0

    .line 57
    :pswitch_2e
    const/4 v0, -0x1

    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method static getEcCurveFromKeymaster(I)Ljava/lang/String;
    .registers 2
    .param p0, "ecCurve"    # I

    .line 147
    packed-switch p0, :pswitch_data_16

    .line 157
    const-string v0, ""

    return-object v0

    .line 155
    :pswitch_6
    const-string/jumbo v0, "secp521r1"

    return-object v0

    .line 153
    :pswitch_a
    const-string/jumbo v0, "secp384r1"

    return-object v0

    .line 151
    :pswitch_e
    const-string/jumbo v0, "secp256r1"

    return-object v0

    .line 149
    :pswitch_12
    const-string/jumbo v0, "secp224r1"

    return-object v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method private static getKeyMintVersion(Ljava/lang/String;)I
    .registers 6
    .param p0, "featureName"    # Ljava/lang/String;

    .line 236
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 237
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 238
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/FeatureInfo;>;"
    if-nez v0, :cond_f

    .line 239
    const/4 v1, -0x1

    return v1

    .line 241
    :cond_f
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "featureInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/FeatureInfo;

    .line 243
    .local v3, "feature":Landroid/content/pm/FeatureInfo;
    iget-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 244
    iget v2, v3, Landroid/content/pm/FeatureInfo;->version:I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_32

    return v2

    .line 246
    .end local v3    # "feature":Landroid/content/pm/FeatureInfo;
    :cond_2e
    goto :goto_17

    .line 249
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/FeatureInfo;>;"
    .end local v1    # "featureInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    :cond_2f
    nop

    .line 251
    const/4 v0, 0x0

    return v0

    .line 247
    :catch_32
    move-exception v0

    .line 248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method static getKeymasterEcCurve(Ljava/lang/String;)I
    .registers 2
    .param p0, "ecCurveName"    # Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "secp224r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_b
    const-string/jumbo v0, "secp256r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 164
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_16
    const-string/jumbo v0, "secp384r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 166
    const/4 v0, 0x2

    return v0

    .line 167
    :cond_21
    const-string/jumbo v0, "secp521r1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 168
    const/4 v0, 0x3

    return v0

    .line 170
    :cond_2c
    const/4 v0, -0x1

    return v0
.end method

.method private static isECParameterSpecOfCurve(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;)Z
    .registers 6
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "curveName"    # Ljava/lang/String;

    .line 195
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getCurveSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 196
    .local v1, "curveSpec":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 197
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 198
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2d} :catch_33
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_2d} :catch_33

    if-eqz v2, :cond_31

    .line 199
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v1    # "curveSpec":Ljava/security/spec/ECParameterSpec;
    :cond_31
    nop

    .line 204
    return v0

    .line 201
    :catch_33
    move-exception v1

    .line 202
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return v0
.end method

.method public static isKeyMintDevice(I)Z
    .registers 6
    .param p0, "securityLevel"    # I

    .line 209
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_3e

    .line 225
    return v3

    .line 211
    :pswitch_9
    :try_start_9
    sget v4, Landroid/security/keystore2/KeymasterUtils;->mIsStrongBoxKeyMintDevice:I

    if-nez v4, :cond_1a

    .line 212
    const-string v4, "android.hardware.strongbox_keystore"

    invoke-static {v4}, Landroid/security/keystore2/KeymasterUtils;->getKeyMintVersion(Ljava/lang/String;)I

    move-result v4

    .line 213
    .local v4, "currentStrongboxVersion":I
    if-lt v4, v0, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    sput v0, Landroid/security/keystore2/KeymasterUtils;->mIsStrongBoxKeyMintDevice:I

    .line 215
    .end local v4    # "currentStrongboxVersion":I
    :cond_1a
    sget v0, Landroid/security/keystore2/KeymasterUtils;->mIsStrongBoxKeyMintDevice:I

    if-ne v0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    return v1

    .line 218
    :pswitch_21
    sget v4, Landroid/security/keystore2/KeymasterUtils;->mIsTEEKeyMintDevice:I

    if-nez v4, :cond_32

    .line 219
    const-string v4, "android.hardware.hardware_keystore"

    invoke-static {v4}, Landroid/security/keystore2/KeymasterUtils;->getKeyMintVersion(Ljava/lang/String;)I

    move-result v4

    .line 220
    .local v4, "currentTEEVersion":I
    if-lt v4, v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    sput v0, Landroid/security/keystore2/KeymasterUtils;->mIsTEEKeyMintDevice:I

    .line 222
    .end local v4    # "currentTEEVersion":I
    :cond_32
    sget v0, Landroid/security/keystore2/KeymasterUtils;->mIsTEEKeyMintDevice:I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_39

    if-ne v0, v2, :cond_37

    goto :goto_38

    :cond_37
    move v1, v3

    :goto_38
    return v1

    .line 227
    :catch_39
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    return v3

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_9
    .end packed-switch
.end method

.method static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .registers 4
    .param p0, "keymasterBlockMode"    # I

    .line 78
    sparse-switch p0, :sswitch_data_20

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 80
    :sswitch_1e
    const/4 v0, 0x0

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1c
        0x20 -> :sswitch_1c
    .end sparse-switch
.end method

.method static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .registers 4
    .param p0, "keymasterPadding"    # I

    .line 93
    packed-switch p0, :pswitch_data_20

    .line 100
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method
