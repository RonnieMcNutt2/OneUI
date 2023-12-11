.class public Landroid/net/LowLatencyModeManager;
.super Ljava/lang/Object;
.source "LowLatencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LowLatencyModeManager$LatencyCallback;,
        Landroid/net/LowLatencyModeManager$LatencyResult;
    }
.end annotation


# static fields
.field public static final LOW:I = 0x2

.field private static final MSG_GET_LATENCY_DONE:I = 0x2

.field private static final MSG_SET_LATENCY_DONE:I = 0x1

.field public static final NORMAL:I = 0x1

.field private static final SIMSLOT1:I = 0x0

.field private static final SIMSLOT2:I = 0x1

.field public static final SUPER_LOW:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LowLatencyModeManager"

.field public static final VERY_LOW:I = 0x3


# instance fields
.field private mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

.field private final mContext:Landroid/content/Context;

.field private mDlLevel:I

.field private mExtension:Z

.field private mPrioDefault:Z

.field private mReceiverHandler:Landroid/os/Handler;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mServiceMessenger2:Landroid/os/Messenger;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mUlLevel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/net/LowLatencyModeManager;)Landroid/net/LowLatencyModeManager$LatencyCallback;
    .registers 1

    iget-object p0, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallback(Landroid/net/LowLatencyModeManager;Landroid/net/LowLatencyModeManager$LatencyCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger(Landroid/net/LowLatencyModeManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceMessenger2(Landroid/net/LowLatencyModeManager;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Landroid/net/LowLatencyModeManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbindRilService(Landroid/net/LowLatencyModeManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/LowLatencyModeManager;->unbindRilService(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    .line 46
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    .line 67
    new-instance v0, Landroid/net/LowLatencyModeManager$1;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$1;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 108
    new-instance v0, Landroid/net/LowLatencyModeManager$2;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$2;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Landroid/net/LowLatencyModeManager$3;

    invoke-direct {v0, p0}, Landroid/net/LowLatencyModeManager$3;-><init>(Landroid/net/LowLatencyModeManager;)V

    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    .line 164
    iput-object p1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method private connectToRilService()V
    .registers 5

    .line 319
    const-string v0, "connect To Ril service"

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 324
    return-void
.end method

.method private connectToRilService2()V
    .registers 5

    .line 327
    const-string v0, "connect To Ril service2"

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    iget-object v1, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 332
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 359
    const-string v0, "LowLatencyModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/String;

    .line 363
    const-string v0, "LowLatencyModeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method private unbindRilService(I)V
    .registers 6
    .param p1, "slotId"    # I

    .line 335
    const/4 v0, 0x0

    const-string v1, "from unbindRilService : "

    if-nez p1, :cond_36

    .line 336
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_69

    .line 338
    :try_start_d
    const-string v2, "unbindRilService"

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_19} :catch_1a

    .line 342
    goto :goto_33

    .line 340
    :catch_1a
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 343
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_33
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    goto :goto_69

    .line 345
    :cond_36
    const/4 v2, 0x1

    if-ne p1, v2, :cond_69

    .line 346
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v2, :cond_69

    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_69

    .line 348
    :try_start_41
    const-string v2, "unbindRilService2"

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Landroid/net/LowLatencyModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/LowLatencyModeManager;->mSecPhoneServiceConnection2:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_4d} :catch_4e

    .line 352
    goto :goto_67

    .line 350
    :catch_4e
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 353
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_67
    iput-object v0, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    .line 356
    :cond_69
    :goto_69
    return-void
.end method


# virtual methods
.method public getLowLatencyMode(ILandroid/net/LowLatencyModeManager$LatencyCallback;)V
    .registers 12
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/net/LowLatencyModeManager$LatencyCallback;

    .line 183
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slotId id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 185
    return-void

    .line 189
    :cond_1d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 190
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 192
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v2, 0xd

    :try_start_29
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 193
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 194
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_35} :catch_cb

    .line 198
    nop

    .line 200
    const/4 v2, 0x1

    if-nez p1, :cond_3d

    .line 201
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService()V

    goto :goto_42

    .line 202
    :cond_3d
    if-ne p1, v2, :cond_42

    .line 203
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService2()V

    .line 206
    :cond_42
    :goto_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start to get latency settings from cp, slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 207
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v3, "req":Landroid/os/Bundle;
    const-string v4, "request"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 209
    const-string v4, "slotId"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    iget-object v4, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 211
    .local v4, "response":Landroid/os/Message;
    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 212
    iget-object v5, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 213
    const/4 v5, 0x0

    .line 215
    .local v5, "sent":Z
    const/4 v6, 0x0

    .local v6, "cnt":I
    :goto_7b
    const/16 v7, 0xa

    if-ge v6, v7, :cond_c5

    .line 216
    :try_start_7f
    iget-object v7, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v7, :cond_8a

    if-nez p1, :cond_8a

    .line 217
    invoke-virtual {v7, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 218
    const/4 v5, 0x1

    .line 219
    goto :goto_c5

    .line 220
    :cond_8a
    iget-object v7, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v7, :cond_95

    if-ne p1, v2, :cond_95

    .line 221
    invoke-virtual {v7, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 222
    const/4 v5, 0x1

    .line 223
    goto :goto_c5

    .line 225
    :cond_95
    const-string v7, "mServiceMessenger is null, wait more time for it is ready"

    invoke-direct {p0, v7}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_9a} :catch_ad

    .line 227
    const-wide/16 v7, 0xc8

    :try_start_9c
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9f
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_9f} :catch_a5
    .catch Ljava/lang/NullPointerException; {:try_start_9c .. :try_end_9f} :catch_a0
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_ad

    .line 232
    :goto_9f
    goto :goto_aa

    .line 230
    :catch_a0
    move-exception v7

    .line 231
    .local v7, "e":Ljava/lang/NullPointerException;
    :try_start_a1
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_aa

    .line 228
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_a5
    move-exception v7

    .line 229
    .local v7, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_a9} :catch_ad

    .end local v7    # "ie":Ljava/lang/InterruptedException;
    goto :goto_9f

    .line 215
    :goto_aa
    add-int/lit8 v6, v6, 0x1

    goto :goto_7b

    .line 235
    .end local v6    # "cnt":I
    :catch_ad
    move-exception v2

    .line 236
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get latency settings failed, e:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 237
    return-void

    .line 238
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_c5
    :goto_c5
    nop

    .line 240
    if-eqz v5, :cond_ca

    iput-object p2, p0, Landroid/net/LowLatencyModeManager;->mCallback:Landroid/net/LowLatencyModeManager$LatencyCallback;

    .line 241
    :cond_ca
    return-void

    .line 195
    .end local v3    # "req":Landroid/os/Bundle;
    .end local v4    # "response":Landroid/os/Message;
    .end local v5    # "sent":Z
    :catch_cb
    move-exception v2

    .line 196
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make get latency settings data: exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public getLowLatencyMode(Landroid/net/LowLatencyModeManager$LatencyCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/net/LowLatencyModeManager$LatencyCallback;

    .line 169
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 170
    .local v0, "defaultDataSlotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid default datat slotId id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 172
    return-void

    .line 174
    :cond_25
    invoke-virtual {p0, v0, p1}, Landroid/net/LowLatencyModeManager;->getLowLatencyMode(ILandroid/net/LowLatencyModeManager$LatencyCallback;)V

    .line 176
    return-void
.end method

.method public setLowLatencyMode(IIIZZ)V
    .registers 14
    .param p1, "slotId"    # I
    .param p2, "ulevel"    # I
    .param p3, "dlevel"    # I
    .param p4, "prio"    # Z
    .param p5, "extension"    # Z

    .line 256
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slotId id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 258
    return-void

    .line 262
    :cond_1d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 265
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v2, 0xd

    :try_start_29
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 266
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 267
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 268
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 269
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 270
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_42

    move v4, v3

    goto :goto_43

    :cond_42
    move v4, v2

    :goto_43
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 271
    if-eqz p5, :cond_49

    move v2, v3

    :cond_49
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_4c} :catch_f8

    .line 275
    nop

    .line 277
    if-nez p1, :cond_53

    .line 278
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService()V

    goto :goto_58

    .line 279
    :cond_53
    if-ne p1, v3, :cond_58

    .line 280
    invoke-direct {p0}, Landroid/net/LowLatencyModeManager;->connectToRilService2()V

    .line 283
    :cond_58
    :goto_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set latency mode, ulevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",dlevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", prio:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",extension:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",slotId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/LowLatencyModeManager;->log(Ljava/lang/String;)V

    .line 284
    iput p2, p0, Landroid/net/LowLatencyModeManager;->mUlLevel:I

    .line 285
    iput p3, p0, Landroid/net/LowLatencyModeManager;->mDlLevel:I

    .line 286
    iput-boolean p4, p0, Landroid/net/LowLatencyModeManager;->mPrioDefault:Z

    .line 287
    iput-boolean p5, p0, Landroid/net/LowLatencyModeManager;->mExtension:Z

    .line 288
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v2, "req":Landroid/os/Bundle;
    const-string v4, "request"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 290
    const-string v4, "slotId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    iget-object v4, p0, Landroid/net/LowLatencyModeManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 292
    .local v4, "response":Landroid/os/Message;
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 293
    iget-object v5, p0, Landroid/net/LowLatencyModeManager;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v5, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 295
    const/4 v5, 0x0

    .local v5, "cnt":I
    :goto_bf
    const/16 v6, 0xa

    if-ge v5, v6, :cond_f6

    .line 296
    :try_start_c3
    iget-object v6, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v6, :cond_cd

    if-nez p1, :cond_cd

    .line 297
    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 298
    return-void

    .line 299
    :cond_cd
    iget-object v6, p0, Landroid/net/LowLatencyModeManager;->mServiceMessenger2:Landroid/os/Messenger;

    if-eqz v6, :cond_d7

    if-ne p1, v3, :cond_d7

    .line 300
    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 301
    return-void

    .line 303
    :cond_d7
    const-string v6, "mServiceMessenger is null, wait more time for it is ready"

    invoke-direct {p0, v6}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_dc} :catch_ef

    .line 305
    const-wide/16 v6, 0xc8

    :try_start_de
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e1
    .catch Ljava/lang/InterruptedException; {:try_start_de .. :try_end_e1} :catch_e7
    .catch Ljava/lang/NullPointerException; {:try_start_de .. :try_end_e1} :catch_e2
    .catch Landroid/os/RemoteException; {:try_start_de .. :try_end_e1} :catch_ef

    .line 310
    :goto_e1
    goto :goto_ec

    .line 308
    :catch_e2
    move-exception v6

    .line 309
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_e3
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_ec

    .line 306
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_e7
    move-exception v6

    .line 307
    .local v6, "ie":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_e3 .. :try_end_eb} :catch_ef

    .end local v6    # "ie":Ljava/lang/InterruptedException;
    goto :goto_e1

    .line 295
    :goto_ec
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 313
    .end local v5    # "cnt":I
    :catch_ef
    move-exception v3

    .line 314
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "set latency settings failed"

    invoke-direct {p0, v5}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    goto :goto_f7

    .line 315
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_f6
    nop

    .line 316
    :goto_f7
    return-void

    .line 272
    .end local v2    # "req":Landroid/os/Bundle;
    .end local v4    # "response":Landroid/os/Message;
    :catch_f8
    move-exception v2

    .line 273
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make set latency settings data: exception occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public setLowLatencyMode(IIZZ)V
    .registers 12
    .param p1, "ulevel"    # I
    .param p2, "dlevel"    # I
    .param p3, "prio"    # Z
    .param p4, "extension"    # Z

    .line 245
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 246
    .local v0, "defaultDataSlotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid default datat slotId id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/LowLatencyModeManager;->loge(Ljava/lang/String;)V

    .line 248
    return-void

    .line 250
    :cond_25
    move-object v1, p0

    move v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/net/LowLatencyModeManager;->setLowLatencyMode(IIIZZ)V

    .line 252
    return-void
.end method
