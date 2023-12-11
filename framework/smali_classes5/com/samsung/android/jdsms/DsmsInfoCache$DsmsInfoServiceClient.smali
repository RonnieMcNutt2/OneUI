.class final Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
.super Ljava/lang/Object;
.source "DsmsInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/jdsms/DsmsInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DsmsInfoServiceClient"
.end annotation


# static fields
.field private static final ACTION_INFO:Ljava/lang/String; = "com.samsung.android.dsms.action.INFO"

.field private static final DSMS_PACKAGE:Ljava/lang/String; = "com.samsung.android.dsms"

.field private static final SUBTAG:Ljava/lang/String; = "DsmsInfoServiceClient"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mIDsmsInfoService:Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

.field private mIsBound:Z

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/samsung/android/jdsms/DsmsInfoCache;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIDsmsInfoService(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;Lcom/samsung/android/dsms/aidl/IDsmsInfoService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIDsmsInfoService:Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/jdsms/DsmsInfoCache;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->this$0:Lcom/samsung/android/jdsms/DsmsInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mLock:Ljava/lang/Object;

    .line 105
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    .line 106
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIDsmsInfoService:Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    .line 108
    new-instance p1, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient$1;-><init>(Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/jdsms/DsmsInfoCache;Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;-><init>(Lcom/samsung/android/jdsms/DsmsInfoCache;)V

    return-void
.end method


# virtual methods
.method public bind()Z
    .registers 7

    .line 136
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    if-nez v0, :cond_38

    .line 137
    const-string v0, "Binding to service"

    const-string v1, "DsmsInfoServiceClient"

    invoke-static {v1, v0}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.dsms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "com.samsung.android.dsms.action.INFO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->this$0:Lcom/samsung/android/jdsms/DsmsInfoCache;

    invoke-static {v2}, Lcom/samsung/android/jdsms/DsmsInfoCache;->-$$Nest$fgetmContext(Lcom/samsung/android/jdsms/DsmsInfoCache;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    .line 143
    if-eqz v2, :cond_33

    .line 144
    const-string v2, "Service is bound"

    invoke-static {v1, v2}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 146
    :cond_33
    const-string v2, "Could not bind to service"

    invoke-static {v1, v2}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_38
    :goto_38
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    return v0
.end method

.method public isBound()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    return v0
.end method

.method public isCommercializedDevice()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIDsmsInfoService:Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    if-eqz v1, :cond_d

    .line 191
    invoke-interface {v1}, Lcom/samsung/android/dsms/aidl/IDsmsInfoService;->isCommercializedDevice()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 189
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service is not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
    throw v1

    .line 192
    .restart local p0    # "this":Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isConnected()Z
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIDsmsInfoService:Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 132
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public unbind()V
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    if-eqz v0, :cond_19

    .line 180
    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->this$0:Lcom/samsung/android/jdsms/DsmsInfoCache;

    invoke-static {v0}, Lcom/samsung/android/jdsms/DsmsInfoCache;->-$$Nest$fgetmContext(Lcom/samsung/android/jdsms/DsmsInfoCache;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIsBound:Z

    .line 182
    const-string v0, "DsmsInfoServiceClient"

    const-string v1, "Service unbound"

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_19
    return-void
.end method

.method public waitConnection(J)V
    .registers 15
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 153
    const-string v0, "DsmsInfoServiceClient"

    const-string v1, "Wait service connection"

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_47

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 159
    .local v2, "startTime":J
    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 160
    .local v4, "currentTime":J
    sub-long v6, v2, v4

    .line 161
    .local v6, "remainingTime":J
    cmp-long v8, v6, v0

    if-lez v8, :cond_3f

    .line 164
    iget-object v8, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 165
    :try_start_1f
    iget-object v9, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mIDsmsInfoService:Lcom/samsung/android/dsms/aidl/IDsmsInfoService;

    if-eqz v9, :cond_2c

    .line 166
    const-string v0, "DsmsInfoServiceClient"

    const-string v1, "Service is connected"

    invoke-static {v0, v1}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    monitor-exit v8
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_3c

    .line 176
    .end local v4    # "currentTime":J
    .end local v6    # "remainingTime":J
    return-void

    .line 170
    .restart local v4    # "currentTime":J
    .restart local v6    # "remainingTime":J
    :cond_2c
    :try_start_2c
    iget-object v9, p0, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->mLock:Ljava/lang/Object;

    invoke-virtual {v9, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_3c

    .line 173
    goto :goto_3a

    .line 171
    :catch_32
    move-exception v9

    .line 172
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_33
    const-string v10, "DsmsInfoServiceClient"

    const-string v11, "Interrupted while waiting remaining time"

    invoke-static {v10, v11}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :goto_3a
    monitor-exit v8

    .line 175
    .end local v4    # "currentTime":J
    .end local v6    # "remainingTime":J
    goto :goto_12

    .line 174
    .restart local v4    # "currentTime":J
    .restart local v6    # "remainingTime":J
    :catchall_3c
    move-exception v0

    monitor-exit v8
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v0

    .line 162
    :cond_3f
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Time waiting connection is over"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    .end local v2    # "startTime":J
    .end local v4    # "currentTime":J
    .end local v6    # "remainingTime":J
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
