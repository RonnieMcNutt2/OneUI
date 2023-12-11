.class public Landroid/os/SemHqmManager;
.super Ljava/lang/Object;
.source "SemHqmManager.java"


# static fields
.field private static final BDlock:Ljava/lang/Object;

.field private static final BDlock_sys:Ljava/lang/Object;

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/ISemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SemHqmManager;->TAG:Ljava/lang/String;

    .line 10
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/ISemHqmManager;Landroid/os/Handler;)V
    .registers 4
    .param p1, "service"    # Landroid/os/ISemHqmManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    .line 21
    iput-object p1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    .line 22
    iput-object p2, p0, Landroid/os/SemHqmManager;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method private static printExceptionTrace(Ljava/lang/Exception;)V
    .registers 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 175
    sget-boolean v0, Landroid/os/SemHqmManager;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    :cond_7
    return-void
.end method


# virtual methods
.method public getCFServerEnable()Z
    .registers 4

    .line 158
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 159
    return v1

    .line 162
    :cond_6
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_9
    iget-object v2, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v2}, Landroid/os/ISemHqmManager;->getCFServerEnable()Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_13
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return v1

    .line 168
    :catchall_11
    move-exception v1

    goto :goto_19

    .line 165
    :catch_13
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 168
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 170
    return v1

    .line 168
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_11

    throw v1
.end method

.method public getDVServerEnable()Z
    .registers 4

    .line 141
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 142
    return v1

    .line 145
    :cond_6
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_9
    iget-object v2, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v2}, Landroid/os/ISemHqmManager;->getDVServerEnable()Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_13
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return v1

    .line 151
    :catchall_11
    move-exception v1

    goto :goto_19

    .line 148
    :catch_13
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 153
    return v1

    .line 151
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_11

    throw v1
.end method

.method public getHqmEnable()Z
    .registers 4

    .line 123
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 124
    return v1

    .line 127
    :cond_6
    sget-object v0, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_9
    iget-object v2, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v2}, Landroid/os/ISemHqmManager;->getHqmEnable()Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_13
    .catchall {:try_start_9 .. :try_end_f} :catchall_11

    :try_start_f
    monitor-exit v0

    return v1

    .line 134
    :catchall_11
    move-exception v1

    goto :goto_19

    .line 130
    :catch_13
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    monitor-exit v0

    .line 136
    return v1

    .line 134
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_11

    throw v1
.end method

.method public sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .param p1, "type"    # I
    .param p2, "Id"    # Ljava/lang/String;
    .param p3, "Ver"    # Ljava/lang/String;
    .param p4, "Manufacture"    # Ljava/lang/String;
    .param p5, "HitType"    # Ljava/lang/String;
    .param p6, "Feature"    # Ljava/lang/String;
    .param p7, "logMaps"    # Ljava/lang/String;
    .param p8, "envlogMaps"    # Ljava/lang/String;

    .line 28
    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 29
    return v2

    .line 32
    :cond_7
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 34
    :try_start_a
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-interface/range {v4 .. v12}, Landroid/os/ISemHqmManager;->sendHWParamServer(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_22
    .catchall {:try_start_a .. :try_end_1e} :catchall_20

    :try_start_1e
    monitor-exit v3

    return v0

    .line 40
    :catchall_20
    move-exception v0

    goto :goto_28

    .line 37
    :catch_22
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 42
    return v2

    .line 40
    :goto_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_20

    throw v0
.end method

.method public sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;

    .line 49
    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 50
    return v2

    .line 53
    :cond_7
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 55
    :try_start_a
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-interface/range {v4 .. v13}, Landroid/os/ISemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_25
    .catchall {:try_start_a .. :try_end_21} :catchall_23

    :try_start_21
    monitor-exit v3

    return v0

    .line 61
    :catchall_23
    move-exception v0

    goto :goto_2b

    .line 58
    :catch_25
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 63
    return v2

    .line 61
    :goto_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_23

    throw v0
.end method

.method public sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 26
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;
    .param p10, "appID"    # Ljava/lang/String;

    .line 70
    move-object v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 71
    return v2

    .line 74
    :cond_7
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_a
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-interface/range {v4 .. v14}, Landroid/os/ISemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_28
    .catchall {:try_start_a .. :try_end_24} :catchall_26

    :try_start_24
    monitor-exit v3

    return v0

    .line 82
    :catchall_26
    move-exception v0

    goto :goto_2e

    .line 79
    :catch_28
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 84
    return v2

    .line 82
    :goto_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_26

    throw v0
.end method

.method public sendHWParamToHQMwithFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 28
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;
    .param p10, "appID"    # Ljava/lang/String;
    .param p11, "filePath"    # Ljava/lang/String;

    .line 91
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 92
    return v2

    .line 95
    :cond_8
    sget-object v3, Landroid/os/SemHqmManager;->BDlock:Ljava/lang/Object;

    monitor-enter v3

    .line 97
    :try_start_b
    iget-object v4, v1, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-interface/range {v4 .. v15}, Landroid/os/ISemHqmManager;->sendHWParamToHQMwithFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_2b
    .catchall {:try_start_b .. :try_end_27} :catchall_29

    :try_start_27
    monitor-exit v3

    return v0

    .line 103
    :catchall_29
    move-exception v0

    goto :goto_31

    .line 100
    :catch_2b
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    monitor-exit v3

    .line 105
    return v2

    .line 103
    :goto_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_29

    throw v0
.end method

.method public sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "dataset"    # Ljava/lang/String;
    .param p3, "sub_dataset"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    if-nez v0, :cond_5

    .line 110
    return-void

    .line 113
    :cond_5
    sget-object v0, Landroid/os/SemHqmManager;->BDlock_sys:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_8
    iget-object v1, p0, Landroid/os/SemHqmManager;->mService:Landroid/os/ISemHqmManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/ISemHqmManager;->sendSystemInfoToHQM(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_10
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    .line 118
    goto :goto_14

    .line 119
    :catchall_e
    move-exception v1

    goto :goto_16

    .line 116
    :catch_10
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_11
    invoke-static {v1}, Landroid/os/SemHqmManager;->printExceptionTrace(Ljava/lang/Exception;)V

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_14
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_e

    throw v1
.end method
