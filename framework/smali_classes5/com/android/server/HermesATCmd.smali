.class public Lcom/android/server/HermesATCmd;
.super Ljava/lang/Object;
.source "HermesATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_HERMES:Ljava/lang/String; = "ISOSECHW"

.field private static final AT_MAIN_INDEX:I = 0x0

.field private static final AT_MAIN_INDEX_OPERATION:I = 0x0

.field private static final AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final AT_MAIN_OPERATION:I = 0x0

.field private static final AT_MAIN_READ_DATA:I = 0xa

.field private static final AT_MAIN_WRITE_DATA:I = 0x14

.field private static final AT_MID_INDEX:I = 0x1

.field private static final AT_MINOR_INDEX:I = 0x2

.field private static final AT_RESPONSE_FAILED:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG(INVALID_PARAM)"

.field private static final AT_RESPONSE_NONE:Ljava/lang/String; = "NONE"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final NOT_PROVISIONED:I = 0x2710

.field private static final NO_ERROR:I = 0x0

.field private static final SAMSUNG_HERMES_GET_SECUREHW_INFO:I = 0xa

.field private static final SAMSUNG_HERMES_PROVISIONING:I = 0x1

.field private static final SAMSUNG_HERMES_SELFTEST:I = 0x0

.field private static final SAMSUNG_HERMES_UPDATE_CRYPTO_FW:I = 0x2

.field private static final SAMSUNG_HERMES_VERIFY_PROVISONING:I = 0xb

.field private static final TAG:Ljava/lang/String; = "HERMES#ATCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/HermesATCmd;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/android/server/HermesATCmd;->mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;

    if-nez v0, :cond_18

    .line 52
    const-string v0, "HERMES#ATCmd"

    const-string v1, "bindHermesServiceManager() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Lcom/samsung/android/service/HermesService/HermesServiceManager;

    iget-object v1, p0, Lcom/android/server/HermesATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/HermesService/HermesServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/HermesATCmd;->mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;

    .line 55
    :cond_18
    iget-object v0, p0, Lcom/android/server/HermesATCmd;->mHermesServiceManager:Lcom/samsung/android/service/HermesService/HermesServiceManager;

    return-object v0
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .line 148
    .local v0, "result":[Ljava/lang/String;
    :try_start_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 152
    goto :goto_e

    .line 149
    :catch_9
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_e
    return-object v0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "ISOSECHW"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;

    .line 69
    const-string v0, "ISOSECHW ProcessCmd ["

    const/4 v1, 0x0

    .line 71
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/HermesATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "params":[Ljava/lang/String;
    const-string v3, "NG(INVALID_PARAM)"

    const-string v4, "HERMES#ATCmd"

    if-nez v2, :cond_13

    .line 74
    const-string v0, "ISOSECHW processCmd wrong param."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-object v3

    .line 78
    :cond_13
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v8, v2, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "result":Ljava/lang/String;
    :try_start_2e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "] start"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_62} :catch_1cc

    const-string v7, "OK"

    const-string v8, "NG"

    sparse-switch v6, :sswitch_data_1ec

    .line 128
    goto/16 :goto_19a

    .line 118
    :sswitch_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesVerifyProvisioning()I

    move-result v3

    move v1, v3

    .line 119
    if-nez v1, :cond_8a

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_1b1

    .line 121
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_8a
    const/16 v3, 0x2710

    if-ne v1, v3, :cond_a4

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "NONE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1b1

    .line 124
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    goto/16 :goto_1b1

    .line 110
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :sswitch_bc
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesGetSecureHWInfo()[B

    move-result-object v3

    .line 111
    .local v3, "chipinfo":[B
    if-eqz v3, :cond_df

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_1b1

    .line 114
    :cond_df
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 115
    goto/16 :goto_1b1

    .line 102
    .end local v3    # "chipinfo":[B
    :sswitch_f3
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesUpdateCryptoFW()[B

    move-result-object v3

    .line 103
    .local v3, "resultinfo":[B
    if-eqz v3, :cond_116

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto/16 :goto_1b1

    .line 106
    :cond_116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 107
    goto/16 :goto_1b1

    .line 94
    .end local v3    # "resultinfo":[B
    :sswitch_12a
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesProvisioning()I

    move-result v3

    move v1, v3

    .line 95
    if-nez v1, :cond_148

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto :goto_1b1

    .line 98
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    goto :goto_1b1

    .line 86
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :sswitch_15f
    invoke-direct {p0}, Lcom/android/server/HermesATCmd;->bindHermesServiceManager()Lcom/samsung/android/service/HermesService/HermesServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/service/HermesService/HermesServiceManager;->hermesSelftest()[B

    move-result-object v3

    .line 87
    .local v3, "stinfo":[B
    if-nez v3, :cond_17c

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_1b1

    .line 90
    :cond_17c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NG_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 91
    goto :goto_1b1

    .line 128
    .end local v3    # "stinfo":[B
    :goto_19a
    const-string v6, "ISOSECHW ProcessCmd wrong command."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 132
    :goto_1b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_1cb} :catch_1cc

    .line 138
    goto :goto_1eb

    .line 134
    :catch_1cc
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NG "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1eb
    return-object v5

    :sswitch_data_1ec
    .sparse-switch
        0x0 -> :sswitch_15f
        0x1 -> :sswitch_12a
        0x2 -> :sswitch_f3
        0xa -> :sswitch_bc
        0xb -> :sswitch_6b
    .end sparse-switch
.end method
