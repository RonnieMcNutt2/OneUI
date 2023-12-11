.class public Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "AndroidKeyStoreSecretKeyFactorySpi.java"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    .line 49
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private static getGateKeeperSecureUserId()Ljava/math/BigInteger;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 269
    :try_start_0
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 270
    :catch_9
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to get GateKeeper secure user ID"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;
    .registers 56
    .param p0, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "securityLevel":I
    const/4 v2, 0x0

    .line 78
    .local v2, "insideSecureHardware":Z
    const/4 v3, -0x1

    .line 79
    .local v3, "origin":I
    const/4 v4, -0x1

    .line 80
    .local v4, "keySize":I
    const/4 v5, 0x0

    .line 83
    .local v5, "purposes":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 84
    .local v6, "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 85
    .local v7, "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 86
    .local v8, "keymasterSwEnforcedUserAuthenticators":I
    const/4 v9, 0x0

    .line 87
    .local v9, "keymasterHwEnforcedUserAuthenticators":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 88
    .local v10, "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 89
    .local v11, "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 90
    .local v12, "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 91
    .local v13, "keyValidityStart":Ljava/util/Date;
    const/4 v14, 0x0

    .line 92
    .local v14, "keyValidityForOriginationEnd":Ljava/util/Date;
    const/4 v15, 0x0

    .line 93
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    const-wide/16 v16, 0x0

    .line 94
    .local v16, "userAuthenticationValidityDurationSeconds":J
    const/16 v18, 0x1

    .line 95
    .local v18, "userAuthenticationRequired":Z
    const/16 v19, 0x0

    .line 96
    .local v19, "userAuthenticationValidWhileOnBody":Z
    const/16 v20, 0x0

    .line 97
    .local v20, "trustedUserPresenceRequired":Z
    const/16 v21, 0x0

    .line 98
    .local v21, "trustedUserConfirmationRequired":Z
    const/16 v22, -0x1

    .line 100
    .local v22, "remainingUsageCount":I
    :try_start_34
    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_38} :catch_370

    move/from16 v23, v1

    .end local v1    # "securityLevel":I
    .local v23, "securityLevel":I
    :try_start_3a
    array-length v1, v0
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3b} :catch_366

    move/from16 v24, v2

    .end local v2    # "insideSecureHardware":Z
    .local v24, "insideSecureHardware":Z
    move-wide/from16 v48, v16

    const/4 v2, 0x0

    .end local v16    # "userAuthenticationValidityDurationSeconds":J
    .local v48, "userAuthenticationValidityDurationSeconds":J
    :goto_40
    if-ge v2, v1, :cond_2b8

    :try_start_42
    aget-object v16, v0, v2

    move-object/from16 v17, v16

    .line 101
    .local v17, "a":Landroid/system/keystore2/Authorization;
    move-object/from16 v27, v0

    move/from16 v26, v1

    move-object/from16 v1, v17

    .end local v17    # "a":Landroid/system/keystore2/Authorization;
    .local v1, "a":Landroid/system/keystore2/Authorization;
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_50} :catch_2a5

    const-wide/32 v16, 0x7fffffff

    sparse-switch v0, :sswitch_data_382

    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .local v50, "keyValidityForConsumptionEnd":Ljava/util/Date;
    .local v51, "keyValidityForOriginationEnd":Ljava/util/Date;
    .local v52, "keyValidityStart":Ljava/util/Date;
    goto/16 :goto_297

    .line 196
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_5e
    :try_start_5e
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 197
    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0

    .line 198
    .end local v21    # "trustedUserConfirmationRequired":Z
    .local v0, "trustedUserConfirmationRequired":Z
    move/from16 v21, v0

    goto/16 :goto_29d

    .line 192
    .end local v0    # "trustedUserConfirmationRequired":Z
    .restart local v21    # "trustedUserConfirmationRequired":Z
    :sswitch_68
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 193
    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0

    .line 194
    .end local v20    # "trustedUserPresenceRequired":Z
    .local v0, "trustedUserPresenceRequired":Z
    move/from16 v20, v0

    goto/16 :goto_29d

    .line 188
    .end local v0    # "trustedUserPresenceRequired":Z
    .restart local v20    # "trustedUserPresenceRequired":Z
    :sswitch_72
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 189
    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0

    .line 190
    .end local v19    # "userAuthenticationValidWhileOnBody":Z
    .local v0, "userAuthenticationValidWhileOnBody":Z
    move/from16 v19, v0

    goto/16 :goto_29d

    .line 176
    .end local v0    # "userAuthenticationValidWhileOnBody":Z
    .restart local v19    # "userAuthenticationValidWhileOnBody":Z
    :sswitch_7c
    const/4 v0, 0x0

    .line 177
    .end local v18    # "userAuthenticationRequired":Z
    .local v0, "userAuthenticationRequired":Z
    move/from16 v18, v0

    goto/16 :goto_29d

    .line 172
    .end local v0    # "userAuthenticationRequired":Z
    .restart local v18    # "userAuthenticationRequired":Z
    :sswitch_81
    nop

    .line 173
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v0

    .line 174
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .local v0, "keyValidityForConsumptionEnd":Ljava/util/Date;
    move-object v15, v0

    goto/16 :goto_29d

    .line 168
    .end local v0    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_89
    nop

    .line 169
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v0

    .line 170
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .local v0, "keyValidityForOriginationEnd":Ljava/util/Date;
    move-object v14, v0

    goto/16 :goto_29d

    .line 165
    .end local v0    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    :sswitch_91
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getDate(Landroid/system/keystore2/Authorization;)Ljava/util/Date;

    move-result-object v0
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_95} :catch_98

    .line 166
    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .local v0, "keyValidityStart":Ljava/util/Date;
    move-object v13, v0

    goto/16 :goto_29d

    .line 211
    .end local v0    # "keyValidityStart":Ljava/util/Date;
    .end local v1    # "a":Landroid/system/keystore2/Authorization;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    :catch_98
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v16, v48

    goto/16 :goto_379

    .line 179
    .restart local v1    # "a":Landroid/system/keystore2/Authorization;
    :sswitch_a5
    nop

    .line 180
    :try_start_a6
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v28
    :try_end_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_aa} :catch_2a5

    move-wide/from16 v30, v28

    .line 181
    .end local v48    # "userAuthenticationValidityDurationSeconds":J
    .local v30, "userAuthenticationValidityDurationSeconds":J
    move-object/from16 v51, v14

    move-object/from16 v50, v15

    move-wide/from16 v14, v30

    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v30    # "userAuthenticationValidityDurationSeconds":J
    .local v14, "userAuthenticationValidityDurationSeconds":J
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    cmp-long v0, v14, v16

    if-gtz v0, :cond_be

    move-wide/from16 v48, v14

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    goto/16 :goto_29d

    .line 182
    :cond_be
    :try_start_be
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_be .. :try_end_c5} :catch_f2

    move-object/from16 v52, v13

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    :try_start_c7
    const-string v13, "User authentication timeout validity too long: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " seconds"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v5    # "purposes":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "userAuthenticationValidityDurationSeconds":J
    .end local v18    # "userAuthenticationRequired":Z
    .end local v19    # "userAuthenticationValidWhileOnBody":Z
    .end local v20    # "trustedUserPresenceRequired":Z
    .end local v21    # "trustedUserConfirmationRequired":Z
    .end local v22    # "remainingUsageCount":I
    .end local v23    # "securityLevel":I
    .end local v24    # "insideSecureHardware":Z
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v0
    :try_end_df
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c7 .. :try_end_df} :catch_df

    .line 211
    .end local v1    # "a":Landroid/system/keystore2/Authorization;
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v5    # "purposes":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "userAuthenticationValidityDurationSeconds":J
    .restart local v18    # "userAuthenticationRequired":Z
    .restart local v19    # "userAuthenticationValidWhileOnBody":Z
    .restart local v20    # "trustedUserPresenceRequired":Z
    .restart local v21    # "trustedUserConfirmationRequired":Z
    .restart local v22    # "remainingUsageCount":I
    .restart local v23    # "securityLevel":I
    .restart local v24    # "insideSecureHardware":Z
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :catch_df
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move-wide/from16 v16, v14

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_379

    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    :catch_f2
    move-exception v0

    move-object/from16 v52, v13

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move-wide/from16 v16, v14

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    goto/16 :goto_379

    .line 200
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v1    # "a":Landroid/system/keystore2/Authorization;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .local v14, "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v48    # "userAuthenticationValidityDurationSeconds":J
    :sswitch_105
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .line 201
    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    :try_start_10b
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v13

    .line 202
    .local v13, "remainingUsageCountUnsigned":J
    cmp-long v0, v13, v16

    if-gtz v0, :cond_11e

    .line 207
    long-to-int v0, v13

    move/from16 v22, v0

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    .end local v22    # "remainingUsageCount":I
    .local v0, "remainingUsageCount":I
    goto/16 :goto_29d

    .line 203
    .end local v0    # "remainingUsageCount":I
    .restart local v22    # "remainingUsageCount":I
    :cond_11e
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Usage count of limited use key too long: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v5    # "purposes":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAuthenticationRequired":Z
    .end local v19    # "userAuthenticationValidWhileOnBody":Z
    .end local v20    # "trustedUserPresenceRequired":Z
    .end local v21    # "trustedUserConfirmationRequired":Z
    .end local v22    # "remainingUsageCount":I
    .end local v23    # "securityLevel":I
    .end local v24    # "insideSecureHardware":Z
    .end local v48    # "userAuthenticationValidityDurationSeconds":J
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v0

    .line 110
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v5    # "purposes":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v18    # "userAuthenticationRequired":Z
    .restart local v19    # "userAuthenticationValidWhileOnBody":Z
    .restart local v20    # "trustedUserPresenceRequired":Z
    .restart local v21    # "trustedUserConfirmationRequired":Z
    .restart local v22    # "remainingUsageCount":I
    .restart local v23    # "securityLevel":I
    .restart local v24    # "insideSecureHardware":Z
    .restart local v48    # "userAuthenticationValidityDurationSeconds":J
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :sswitch_137
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    invoke-static {v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->getUnsignedInt(Landroid/system/keystore2/Authorization;)J

    move-result-wide v13

    .line 111
    .local v13, "keySizeUnsigned":J
    cmp-long v0, v13, v16

    if-gtz v0, :cond_14f

    .line 115
    long-to-int v0, v13

    .line 116
    .end local v4    # "keySize":I
    .local v0, "keySize":I
    move v4, v0

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_29d

    .line 112
    .end local v0    # "keySize":I
    .restart local v4    # "keySize":I
    :cond_14f
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Key too large: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " bits"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v5    # "purposes":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAuthenticationRequired":Z
    .end local v19    # "userAuthenticationValidWhileOnBody":Z
    .end local v20    # "trustedUserPresenceRequired":Z
    .end local v21    # "trustedUserConfirmationRequired":Z
    .end local v22    # "remainingUsageCount":I
    .end local v23    # "securityLevel":I
    .end local v24    # "insideSecureHardware":Z
    .end local v48    # "userAuthenticationValidityDurationSeconds":J
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v0

    .line 122
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v5    # "purposes":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v18    # "userAuthenticationRequired":Z
    .restart local v19    # "userAuthenticationValidWhileOnBody":Z
    .restart local v20    # "trustedUserPresenceRequired":Z
    .restart local v21    # "trustedUserConfirmationRequired":Z
    .restart local v22    # "remainingUsageCount":I
    .restart local v23    # "securityLevel":I
    .restart local v24    # "insideSecureHardware":Z
    .restart local v48    # "userAuthenticationValidityDurationSeconds":J
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :sswitch_16e
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v0
    :try_end_17c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10b .. :try_end_17c} :catch_284

    move v13, v0

    .line 124
    .local v13, "paddingMode":I
    const/4 v0, 0x5

    if-eq v13, v0, :cond_18d

    const/4 v0, 0x3

    if-ne v13, v0, :cond_184

    goto :goto_18d

    .line 131
    :cond_184
    nop

    .line 132
    :try_start_185
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "jcaPadding":Ljava/lang/String;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_196

    .line 126
    .end local v0    # "jcaPadding":Ljava/lang/String;
    :cond_18d
    :goto_18d
    nop

    .line 127
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$SignaturePadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "padding":Ljava/lang/String;
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_195
    .catch Ljava/lang/IllegalArgumentException; {:try_start_185 .. :try_end_195} :catch_198

    .line 130
    nop

    .line 139
    .end local v0    # "padding":Ljava/lang/String;
    :goto_196
    goto/16 :goto_297

    .line 136
    :catch_198
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_199
    new-instance v2, Ljava/security/ProviderException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported padding: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origin":I
    .end local v4    # "keySize":I
    .end local v5    # "purposes":I
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .end local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .end local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userAuthenticationRequired":Z
    .end local v19    # "userAuthenticationValidWhileOnBody":Z
    .end local v20    # "trustedUserPresenceRequired":Z
    .end local v21    # "trustedUserConfirmationRequired":Z
    .end local v22    # "remainingUsageCount":I
    .end local v23    # "securityLevel":I
    .end local v24    # "insideSecureHardware":Z
    .end local v48    # "userAuthenticationValidityDurationSeconds":J
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .end local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    throw v2

    .line 142
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "origin":I
    .restart local v4    # "keySize":I
    .restart local v5    # "purposes":I
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .restart local v10    # "keymasterSecureUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    .restart local v11    # "encryptionPaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "signaturePaddingsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v18    # "userAuthenticationRequired":Z
    .restart local v19    # "userAuthenticationValidWhileOnBody":Z
    .restart local v20    # "trustedUserPresenceRequired":Z
    .restart local v21    # "trustedUserConfirmationRequired":Z
    .restart local v22    # "remainingUsageCount":I
    .restart local v23    # "securityLevel":I
    .restart local v24    # "insideSecureHardware":Z
    .restart local v48    # "userAuthenticationValidityDurationSeconds":J
    .restart local p0    # "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    :sswitch_1b2
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 143
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v0

    .line 142
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    goto/16 :goto_297

    .line 146
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_1c9
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 148
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v0

    .line 147
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    goto/16 :goto_297

    .line 118
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_1e0
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 119
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v0

    .line 118
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->fromKeymaster(I)I

    move-result v0

    or-int/2addr v0, v5

    .line 120
    .end local v5    # "purposes":I
    .local v0, "purposes":I
    move v5, v0

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_29d

    .line 103
    .end local v0    # "purposes":I
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v5    # "purposes":I
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_1fc
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 104
    invoke-static {v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v0
    :try_end_208
    .catch Ljava/lang/IllegalArgumentException; {:try_start_199 .. :try_end_208} :catch_284

    move v13, v0

    .line 105
    .end local v24    # "insideSecureHardware":Z
    .local v13, "insideSecureHardware":Z
    :try_start_209
    iget v0, v1, Landroid/system/keystore2/Authorization;->securityLevel:I
    :try_end_20b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_209 .. :try_end_20b} :catch_236

    move v14, v0

    .line 106
    .end local v23    # "securityLevel":I
    .local v14, "securityLevel":I
    :try_start_20c
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 107
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getOrigin()I

    move-result v0

    .line 106
    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Origin;->fromKeymaster(I)I

    move-result v0
    :try_end_218
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20c .. :try_end_218} :catch_225

    .line 108
    .end local v3    # "origin":I
    .local v0, "origin":I
    move v3, v0

    move/from16 v24, v13

    move/from16 v23, v14

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_29d

    .line 211
    .end local v0    # "origin":I
    .end local v1    # "a":Landroid/system/keystore2/Authorization;
    .restart local v3    # "origin":I
    :catch_225
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move v2, v13

    move v1, v14

    move-wide/from16 v16, v48

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_379

    .end local v14    # "securityLevel":I
    .restart local v23    # "securityLevel":I
    :catch_236
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move v2, v13

    move/from16 v1, v23

    move-wide/from16 v16, v48

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_379

    .line 152
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v1    # "a":Landroid/system/keystore2/Authorization;
    .local v13, "keyValidityStart":Ljava/util/Date;
    .local v14, "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v24    # "insideSecureHardware":Z
    :sswitch_248
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    :try_start_24e
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getHardwareAuthenticatorType()I

    move-result v0

    .line 153
    .local v0, "authenticatorType":I
    iget v13, v1, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-static {v13}, Landroid/security/keystore2/KeyStore2ParameterUtils;->isSecureHardware(I)Z

    move-result v13

    if-eqz v13, :cond_266

    .line 154
    move v9, v0

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto :goto_29d

    .line 156
    :cond_266
    move v8, v0

    .line 158
    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto :goto_29d

    .line 160
    .end local v0    # "authenticatorType":I
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :sswitch_26e
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    iget-object v0, v1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 162
    invoke-virtual {v0}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v13

    .line 161
    invoke-static {v13, v14}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 160
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_283
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24e .. :try_end_283} :catch_284

    .line 163
    goto :goto_297

    .line 211
    .end local v1    # "a":Landroid/system/keystore2/Authorization;
    :catch_284
    move-exception v0

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v16, v48

    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    goto/16 :goto_379

    .line 100
    :goto_297
    move-object/from16 v15, v50

    move-object/from16 v14, v51

    move-object/from16 v13, v52

    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :goto_29d
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v26

    move-object/from16 v0, v27

    goto/16 :goto_40

    .line 211
    :catch_2a5
    move-exception v0

    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move/from16 v1, v23

    move/from16 v2, v24

    move-wide/from16 v16, v48

    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    goto/16 :goto_379

    .line 213
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .restart local v13    # "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    :cond_2b8
    move-object/from16 v52, v13

    move-object/from16 v51, v14

    move-object/from16 v50, v15

    .line 214
    .end local v13    # "keyValidityStart":Ljava/util/Date;
    .end local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v15    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .restart local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .restart local v52    # "keyValidityStart":Ljava/util/Date;
    const/4 v0, -0x1

    if-eq v4, v0, :cond_35e

    .line 217
    if-eq v3, v0, :cond_356

    .line 221
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 222
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 223
    .local v1, "encryptionPaddings":[Ljava/lang/String;
    new-array v2, v0, [Ljava/lang/String;

    .line 224
    invoke-interface {v12, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 226
    .local v0, "signaturePaddings":[Ljava/lang/String;
    if-eqz v18, :cond_2dc

    if-eqz v9, :cond_2dc

    if-nez v8, :cond_2dc

    const/4 v13, 0x1

    goto :goto_2dd

    :cond_2dc
    const/4 v13, 0x0

    .line 230
    .local v13, "userAuthenticationRequirementEnforcedBySecureHardware":Z
    :goto_2dd
    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/String;

    invoke-interface {v6, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 231
    .local v15, "digests":[Ljava/lang/String;
    new-array v2, v14, [Ljava/lang/String;

    invoke-interface {v7, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 233
    .local v2, "blockModes":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 234
    .local v17, "invalidatedByBiometricEnrollment":Z
    const/4 v14, 0x2

    if-eq v8, v14, :cond_2f5

    if-ne v9, v14, :cond_30c

    .line 237
    :cond_2f5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_308

    .line 238
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getGateKeeperSecureUserId()Ljava/math/BigInteger;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_308

    const/16 v16, 0x1

    goto :goto_30a

    :cond_308
    const/16 v16, 0x0

    :goto_30a
    move/from16 v17, v16

    .line 241
    :cond_30c
    new-instance v14, Landroid/security/keystore/KeyInfo;

    move-object/from16 v53, v6

    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v53, "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getUserKeyDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v6

    iget-object v6, v6, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    move-object/from16 v54, v7

    move/from16 v16, v8

    move-wide/from16 v7, v48

    move/from16 v48, v9

    .end local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .local v7, "userAuthenticationValidityDurationSeconds":J
    .local v16, "keymasterSwEnforcedUserAuthenticators":I
    .local v48, "keymasterHwEnforcedUserAuthenticators":I
    .local v54, "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    long-to-int v9, v7

    .line 255
    if-eqz v13, :cond_324

    .line 256
    move/from16 v40, v48

    goto :goto_326

    .line 257
    :cond_324
    move/from16 v40, v16

    :goto_326
    move-object/from16 v25, v14

    move-object/from16 v26, v6

    move/from16 v27, v24

    move/from16 v28, v3

    move/from16 v29, v4

    move-object/from16 v30, v52

    move-object/from16 v31, v51

    move-object/from16 v32, v50

    move/from16 v33, v5

    move-object/from16 v34, v1

    move-object/from16 v35, v0

    move-object/from16 v36, v15

    move-object/from16 v37, v2

    move/from16 v38, v18

    move/from16 v39, v9

    move/from16 v41, v13

    move/from16 v42, v19

    move/from16 v43, v20

    move/from16 v44, v17

    move/from16 v45, v21

    move/from16 v46, v23

    move/from16 v47, v22

    invoke-direct/range {v25 .. v47}, Landroid/security/keystore/KeyInfo;-><init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIIZZZZZII)V

    .line 241
    return-object v14

    .line 218
    .end local v0    # "signaturePaddings":[Ljava/lang/String;
    .end local v1    # "encryptionPaddings":[Ljava/lang/String;
    .end local v2    # "blockModes":[Ljava/lang/String;
    .end local v13    # "userAuthenticationRequirementEnforcedBySecureHardware":Z
    .end local v15    # "digests":[Ljava/lang/String;
    .end local v16    # "keymasterSwEnforcedUserAuthenticators":I
    .end local v17    # "invalidatedByBiometricEnrollment":Z
    .end local v53    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "keymasterSwEnforcedUserAuthenticators":I
    .restart local v9    # "keymasterHwEnforcedUserAuthenticators":I
    .local v48, "userAuthenticationValidityDurationSeconds":J
    :cond_356
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key origin not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_35e
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Key size not available"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    .end local v24    # "insideSecureHardware":Z
    .end local v48    # "userAuthenticationValidityDurationSeconds":J
    .end local v50    # "keyValidityForConsumptionEnd":Ljava/util/Date;
    .end local v51    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .end local v52    # "keyValidityStart":Ljava/util/Date;
    .local v2, "insideSecureHardware":Z
    .local v13, "keyValidityStart":Ljava/util/Date;
    .restart local v14    # "keyValidityForOriginationEnd":Ljava/util/Date;
    .local v15, "keyValidityForConsumptionEnd":Ljava/util/Date;
    .local v16, "userAuthenticationValidityDurationSeconds":J
    :catch_366
    move-exception v0

    move/from16 v24, v2

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move/from16 v1, v23

    .end local v2    # "insideSecureHardware":Z
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "insideSecureHardware":Z
    .restart local v53    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v54    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_379

    .end local v23    # "securityLevel":I
    .end local v24    # "insideSecureHardware":Z
    .end local v53    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v54    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "securityLevel":I
    .restart local v2    # "insideSecureHardware":Z
    .restart local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_370
    move-exception v0

    move/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    .line 212
    .end local v6    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v53    # "digestsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v54    # "blockModesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_379
    new-instance v6, Ljava/security/ProviderException;

    const-string v7, "Unsupported key characteristic"

    invoke-direct {v6, v7, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    nop

    :sswitch_data_382
    .sparse-switch
        -0x5ffffe0a -> :sswitch_26e
        0x100001f8 -> :sswitch_248
        0x100002be -> :sswitch_1fc
        0x20000001 -> :sswitch_1e0
        0x20000004 -> :sswitch_1c9
        0x20000005 -> :sswitch_1b2
        0x20000006 -> :sswitch_16e
        0x30000003 -> :sswitch_137
        0x30000195 -> :sswitch_105
        0x300001f9 -> :sswitch_a5
        0x60000190 -> :sswitch_91
        0x60000191 -> :sswitch_89
        0x60000192 -> :sswitch_81
        0x700001f7 -> :sswitch_7c
        0x700001fa -> :sswitch_72
        0x700001fb -> :sswitch_68
        0x700001fc -> :sswitch_5e
    .end sparse-switch
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate secret key in Android Keystore, use KeyGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 279
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 6
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "keySpecClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 54
    if-eqz p2, :cond_6a

    .line 57
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_2d

    .line 58
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1e
    const-string/jumbo v2, "null"

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2d
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 65
    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 70
    .local v0, "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;

    move-result-object v1

    return-object v1

    .line 66
    .end local v0    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    :cond_45
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_62
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key material export of Android KeyStore keys is not supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_6a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpecClass == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .registers 4
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 284
    if-eqz p1, :cond_f

    .line 286
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_7

    .line 291
    return-object p1

    .line 287
    :cond_7
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a secret key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_f
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
