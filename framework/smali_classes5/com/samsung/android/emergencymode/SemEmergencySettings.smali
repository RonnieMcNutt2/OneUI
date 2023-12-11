.class public Lcom/samsung/android/emergencymode/SemEmergencySettings;
.super Ljava/lang/Object;
.source "SemEmergencySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemEmergencySettings"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static checkForMCC()Ljava/lang/String;
    .registers 16

    .line 267
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "mccmn":Ljava/lang/String;
    const-string/jumbo v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "isReady":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForMCC: gsm.sim.operator.numeric mccmn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    if-eqz v0, :cond_132

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_132

    .line 275
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "arrMcc":[Ljava/lang/String;
    if-eqz v1, :cond_40

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_41

    :cond_40
    move-object v4, v2

    .line 282
    .local v4, "arrIsReady":[Ljava/lang/String;
    :goto_41
    array-length v6, v5

    .line 283
    .local v6, "simCount":I
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/String;

    .line 285
    .local v8, "mcc1":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_46
    const/4 v10, 0x0

    if-ge v9, v6, :cond_64

    .line 286
    aget-object v11, v5, v9

    if-eqz v11, :cond_5f

    aget-object v11, v5, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v7, :cond_5f

    .line 287
    aget-object v11, v5, v9

    const/4 v12, 0x3

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_61

    .line 289
    :cond_5f
    aput-object v2, v8, v9

    .line 285
    :goto_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 293
    .end local v9    # "i":I
    :cond_64
    array-length v7, v4

    .line 294
    .local v7, "size_readystate":I
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 296
    .local v9, "arrIsReadyValue":Ljava/lang/String;
    const-string v11, "checkForMCC: requested Country : mcc1[0] "

    const-string v12, "READY"

    const-string v13, " sim ready = "

    if-lez v7, :cond_9c

    aget-object v14, v4, v10

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9c

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v11, v8, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v11, v4, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    aget-object v2, v8, v10

    return-object v2

    .line 299
    :cond_9c
    const-string v14, "checkForMCC: requested Country : mcc1[1] "

    const/4 v15, 0x1

    if-le v7, v15, :cond_cc

    aget-object v2, v4, v15

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v10, v8, v15

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v10, v4, v15

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    aget-object v2, v8, v15

    return-object v2

    .line 302
    :cond_cc
    if-lez v6, :cond_f3

    aget-object v2, v8, v10

    if-eqz v2, :cond_f3

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v11, v8, v10

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    aget-object v2, v8, v10

    return-object v2

    .line 305
    :cond_f3
    if-le v6, v15, :cond_11a

    aget-object v2, v8, v15

    if-eqz v2, :cond_11a

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v10, v8, v15

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    aget-object v2, v8, v15

    return-object v2

    .line 309
    :cond_11a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkForMCC: requested Country : default cond. sim ready = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    return-object v2

    .line 277
    .end local v4    # "arrIsReady":[Ljava/lang/String;
    .end local v5    # "arrMcc":[Ljava/lang/String;
    .end local v6    # "simCount":I
    .end local v7    # "size_readystate":I
    .end local v8    # "mcc1":[Ljava/lang/String;
    .end local v9    # "arrIsReadyValue":Ljava/lang/String;
    :cond_132
    return-object v2
.end method

.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;

    .line 73
    if-eqz p0, :cond_71

    if-nez p1, :cond_5

    goto :goto_71

    .line 76
    :cond_5
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .line 79
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pref=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "selection":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 81
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_46

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    const-string/jumbo v2, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_4e
    .catchall {:try_start_7 .. :try_end_46} :catchall_4c

    .line 89
    .end local v6    # "selection":Ljava/lang/String;
    :cond_46
    if-eqz v1, :cond_6a

    .line 90
    :goto_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    .line 89
    :catchall_4c
    move-exception v2

    goto :goto_6b

    .line 86
    :catch_4e
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4f
    const-string v3, "SemEmergencySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_4c

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6a

    .line 90
    goto :goto_48

    .line 92
    :cond_6a
    :goto_6a
    return-object v0

    .line 89
    :goto_6b
    if-eqz v1, :cond_70

    .line 90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_70
    throw v2

    .line 74
    .end local v0    # "ret":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_71
    :goto_71
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 122
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 124
    return p2

    .line 126
    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 172
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v1

    .line 175
    :catch_9
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-wide p2
.end method

.method public static getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getEmergencyNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEmergencyNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "type"    # Ljava/lang/String;

    .line 213
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "China"

    const-string/jumbo v4, "ro.csc.country_code"

    const-string/jumbo v5, "getEmergencyNumber not found emergency number!"

    const-string v6, "SemEmergencySettings"

    if-eqz p1, :cond_152

    if-eqz v2, :cond_152

    if-nez v1, :cond_16

    goto/16 :goto_152

    .line 216
    :cond_16
    const/4 v13, 0x0

    .line 217
    .local v13, "ret":Ljava/lang/String;
    const/4 v14, 0x0

    .line 218
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 219
    .local v0, "isReady":Z
    const/4 v7, 0x1

    .line 220
    .local v7, "mState":I
    const-string/jumbo v8, "phone"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 222
    .local v15, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v8, 0x0

    .line 223
    .local v8, "mccmnc":Ljava/lang/String;
    const/4 v9, 0x0

    move v12, v0

    move v11, v7

    move-object v0, v8

    .end local v7    # "mState":I
    .end local v8    # "mccmnc":Ljava/lang/String;
    .local v0, "mccmnc":Ljava/lang/String;
    .local v9, "i":I
    .local v11, "mState":I
    .local v12, "isReady":Z
    :goto_29
    :try_start_29
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_ff
    .catchall {:try_start_29 .. :try_end_2d} :catchall_f9

    if-ge v9, v7, :cond_52

    .line 225
    if-eqz v0, :cond_3c

    :try_start_31
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const/4 v7, 0x1

    if-ne v11, v7, :cond_45

    .line 226
    :cond_3c
    invoke-static {v1, v9}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getSubId(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v15, v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 228
    :cond_45
    invoke-virtual {v15, v9}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    move v11, v7

    .line 229
    const/4 v7, 0x5

    if-ne v11, v7, :cond_4f

    .line 230
    const/4 v7, 0x1

    move v12, v7

    .line 223
    :cond_4f
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 233
    .end local v9    # "i":I
    :cond_52
    const/4 v7, 0x0

    .line 234
    .local v7, "mcc":Ljava/lang/String;
    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_72

    .line 235
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_61} :catch_6b
    .catchall {:try_start_31 .. :try_end_61} :catchall_64

    move-object v7, v8

    move-object v9, v7

    goto :goto_78

    .line 250
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v7    # "mcc":Ljava/lang/String;
    :catchall_64
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_138

    .line 247
    :catch_6b
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    goto/16 :goto_104

    .line 237
    .restart local v0    # "mccmnc":Ljava/lang/String;
    .restart local v7    # "mcc":Ljava/lang/String;
    :cond_72
    :try_start_72
    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->checkForMCC()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v9, v7

    .line 239
    .end local v7    # "mcc":Ljava/lang/String;
    .local v9, "mcc":Ljava/lang/String;
    :goto_78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEmergencyNumber requested Country : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sim ready = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mcc=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 242
    .local v10, "selection":Ljava/lang/String;
    sget-object v8, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_b5} :catch_ff
    .catchall {:try_start_72 .. :try_end_b5} :catchall_f9

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v7, p1

    move-object/from16 v19, v9

    .end local v9    # "mcc":Ljava/lang/String;
    .local v19, "mcc":Ljava/lang/String;
    move-object/from16 v9, v16

    move/from16 v16, v11

    .end local v11    # "mState":I
    .local v16, "mState":I
    move-object/from16 v11, v17

    move/from16 v17, v12

    .end local v12    # "isReady":Z
    .local v17, "isReady":Z
    move-object/from16 v12, v18

    :try_start_c9
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v14, v7

    .line 243
    if-eqz v14, :cond_e2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_e2

    .line 244
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v14, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_e1} :catch_f7
    .catchall {:try_start_c9 .. :try_end_e1} :catchall_137

    move-object v13, v7

    .line 250
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v10    # "selection":Ljava/lang/String;
    .end local v19    # "mcc":Ljava/lang/String;
    :cond_e2
    if-eqz v14, :cond_e7

    .line 251
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_e7
    if-nez v13, :cond_136

    .line 253
    invoke-static {v6, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_132

    .line 256
    goto :goto_12e

    .line 247
    .end local v0    # "countryCode":Ljava/lang/String;
    :catch_f7
    move-exception v0

    goto :goto_104

    .line 250
    .end local v16    # "mState":I
    .end local v17    # "isReady":Z
    .restart local v11    # "mState":I
    .restart local v12    # "isReady":Z
    :catchall_f9
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    .end local v11    # "mState":I
    .end local v12    # "isReady":Z
    .restart local v16    # "mState":I
    .restart local v17    # "isReady":Z
    goto :goto_138

    .line 247
    .end local v16    # "mState":I
    .end local v17    # "isReady":Z
    .restart local v11    # "mState":I
    .restart local v12    # "isReady":Z
    :catch_ff
    move-exception v0

    move/from16 v16, v11

    move/from16 v17, v12

    .line 248
    .end local v11    # "mState":I
    .end local v12    # "isReady":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "mState":I
    .restart local v17    # "isReady":Z
    :goto_104
    :try_start_104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11a
    .catchall {:try_start_104 .. :try_end_11a} :catchall_137

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v14, :cond_11f

    .line 251
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_11f
    if-nez v13, :cond_136

    .line 253
    invoke-static {v6, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_132

    .line 256
    :goto_12e
    const-string v3, "119"

    move-object v13, v3

    .end local v13    # "ret":Ljava/lang/String;
    .local v3, "ret":Ljava/lang/String;
    goto :goto_135

    .line 258
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v13    # "ret":Ljava/lang/String;
    :cond_132
    const-string v3, "911"

    move-object v13, v3

    .line 260
    .end local v0    # "countryCode":Ljava/lang/String;
    :goto_135
    nop

    .line 262
    :cond_136
    return-object v13

    .line 250
    :catchall_137
    move-exception v0

    :goto_138
    if-eqz v14, :cond_13d

    .line 251
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_13d
    if-nez v13, :cond_151

    .line 253
    invoke-static {v6, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 255
    .local v4, "countryCode":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14f

    .line 256
    const-string v13, "119"

    goto :goto_151

    .line 258
    :cond_14f
    const-string v13, "911"

    .line 261
    .end local v4    # "countryCode":Ljava/lang/String;
    :cond_151
    :goto_151
    throw v0

    .line 214
    .end local v13    # "ret":Ljava/lang/String;
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v15    # "mTelephonyManager":Landroid/telephony/TelephonyManager;
    .end local v16    # "mState":I
    .end local v17    # "isReady":Z
    :cond_152
    :goto_152
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 104
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return v1

    .line 107
    :catch_9
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 154
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "ret":Ljava/lang/String;
    :try_start_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_9

    return-wide v1

    .line 157
    :catch_9
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemEmergencySettings"

    invoke-static {v3, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-wide p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 138
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 140
    return-object p2

    .line 142
    :cond_7
    return-object v0
.end method

.method private static getSubId(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 315
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 316
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    if-eqz v0, :cond_11

    .line 317
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 318
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_11

    .line 319
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    return v2

    .line 322
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private static isPossibleNormalCall(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, "return_val":Z
    :try_start_1
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 348
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_18
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    if-nez v2, :cond_15

    .line 349
    const/4 v0, 0x1

    .line 354
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_15
    return v0

    :catchall_16
    move-exception v1

    goto :goto_1c

    .line 351
    :catch_18
    move-exception v1

    .line 352
    .local v1, "e":Ljava/lang/Exception;
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    .line 354
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1c
    return v0
.end method

.method private static makeEmergencyNumber(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isReady"    # Z

    .line 326
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SemEmergencySettings"

    if-eqz v0, :cond_e

    .line 327
    const-string v0, "This is Emergency number"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-object p1

    .line 331
    :cond_e
    if-eqz p2, :cond_1c

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->isPossibleNormalCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 332
    const-string v0, "SIM Ready, not emergency number."

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-object p1

    .line 335
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Ready = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", default emergency number."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public static put(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 60
    if-nez p0, :cond_3

    .line 61
    return-void

    .line 63
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "selection":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "pref"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 70
    .local v2, "resultUri":Landroid/net/Uri;
    return-void
.end method
