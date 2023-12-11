.class public Lcom/android/server/SamsungAttestationATCmd;
.super Lcom/android/server/DevRootKeyATCmd;
.source "SamsungAttestationATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field protected static final TAG:Ljava/lang/String; = "DEVROOT#ATCmd(2.0.0)"

.field protected static final VERSION:Ljava/lang/String; = "2.0.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;-><init>(Landroid/content/Context;)V

    .line 41
    sget-boolean v0, Lcom/android/server/SamsungAttestationATCmd;->isSupportnewSAKatcmd:Z

    const-string v1, "DEVROOT#ATCmd(2.0.0)"

    if-eqz v0, :cond_f

    .line 42
    const-string v0, "SkeymintATCmd start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 45
    :cond_f
    const-string v0, "SkeymintATCmd is not start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_14
    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "DEVROOTK"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "cmd"    # Ljava/lang/String;

    .line 60
    const-string v0, "ProcessCmd ["

    sget-boolean v1, Lcom/android/server/SamsungAttestationATCmd;->isSupportnewSAKatcmd:Z

    const-string v2, "DEVROOT#ATCmd(2.0.0)"

    if-nez v1, :cond_12

    .line 61
    const-string v0, "DevRootKeyATCmd.processCmd is run"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_12
    const/4 v1, 0x0

    .line 67
    .local v1, "ret":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 68
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/SamsungAttestationATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, "params":[Ljava/lang/String;
    const-string v5, "NG_FAIL(INVALID_PARAM)"

    if-nez v4, :cond_21

    .line 71
    return-object v5

    .line 73
    :cond_21
    array-length v6, v4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_26

    .line 74
    return-object v5

    .line 77
    :cond_26
    :try_start_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 81
    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_68

    aget-object v6, v4, v7

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_85

    .line 84
    :cond_68
    const/4 v6, 0x2

    aget-object v6, v4, v6

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v3    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 91
    .end local v0    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_f2

    .line 119
    :pswitch_a1
    goto :goto_b6

    .line 102
    :pswitch_a2
    const-string v0, "New SamsungAttestation AT cmd"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :pswitch_ac
    const-string v0, "New DRK AT cmd"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->processCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :goto_b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] end"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_d0} :catch_d1

    .line 125
    goto :goto_f0

    .line 121
    :catch_d1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_f0
    return-object v3

    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_a2
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_a1
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_ac
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
        :pswitch_a2
    .end packed-switch
.end method
