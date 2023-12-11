.class public Landroid/os/ContainerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContainerStateReceiver.java"


# static fields
.field public static ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String; = null

.field public static final CONTAINER_EVENT_ADMIN_LOCKED:I = 0x10

.field public static final CONTAINER_EVENT_ADMIN_UNLOCKED:I = 0x11

.field public static final CONTAINER_EVENT_CREATED:I = 0x0

.field public static final CONTAINER_EVENT_ENABLED:I = 0x12

.field public static final CONTAINER_EVENT_LICENSE_ACTIVATED:I = 0xb

.field public static final CONTAINER_EVENT_LICENSE_EXPIRED:I = 0xc

.field public static final CONTAINER_EVENT_LOCKED:I = 0x4

.field public static final CONTAINER_EVENT_LOCKSCREEN_STATE_CHANGED:I = 0xf

.field public static final CONTAINER_EVENT_ONELOCK:I = 0x13

.field public static final CONTAINER_EVENT_REMOVED:I = 0xa

.field public static final CONTAINER_EVENT_RESET:I = 0x9

.field public static final CONTAINER_EVENT_RUNNING:I = 0x1

.field public static final CONTAINER_EVENT_SHUTDOWN:I = 0x2

.field public static final CONTAINER_EVENT_SWITCH:I = 0x3

.field public static final CONTAINER_EVENT_UNLOCKED:I = 0x5

.field private static DEBUG:Z = false

.field public static final DEVICE_EVENT_OWNER_ACTIVATED:I = 0xd

.field public static final DEVICE_EVENT_OWNER_LICENSE_ACTIVATED:I = 0xe

.field public static final DEVICE_EVENT_OWNER_LICENSE_EXPIRED:I = 0x14

.field public static EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String;

.field public static EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

.field public static EXTRA_CONTIANER_ID:Ljava/lang/String;

.field public static EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

.field public static EXTRA_USER_INFO:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-string v0, "ContainerStateReceiver"

    sput-object v0, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/ContainerStateReceiver;->DEBUG:Z

    .line 24
    const-string v0, "com.samsung.android.knox.ACTION_CONTAINER_STATE_RECEIVER"

    sput-object v0, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    .line 29
    const-string v0, "com.samsung.knox.EXTRA_CONTIANER_ID"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    .line 34
    const-string v0, "com.samsung.knox.EXTRA_CONTIANER_EVENT_ID"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    .line 39
    const-string v0, "com.samsung.knox.EXTRA_LOCKSCREEN_VISIBLE"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    .line 45
    const-string v0, "com.samsung.knox.EXTRA_CONTIANER_CONFIGURATION_TYPE"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String;

    .line 51
    const-string v0, "com.samsung.knox.EXTRA_USER_INFO"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/os/ContainerStateReceiver;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method public static toEventString(I)Ljava/lang/String;
    .registers 2
    .param p0, "event"    # I

    .line 92
    packed-switch p0, :pswitch_data_3c

    .line 131
    :pswitch_3
    const-string v0, "CONTAINER_EVENT_UNKNOWN"

    return-object v0

    .line 128
    :pswitch_6
    const-string v0, "DEVICE_EVENT_OWNER_LICENSE_EXPIRED"

    return-object v0

    .line 126
    :pswitch_9
    const-string v0, "CONTAINER_EVENT_ONELOCK"

    return-object v0

    .line 124
    :pswitch_c
    const-string v0, "CONTAINER_EVENT_ENABLED"

    return-object v0

    .line 122
    :pswitch_f
    const-string v0, "CONTAINER_EVENT_ADMIN_UNLOCKED"

    return-object v0

    .line 120
    :pswitch_12
    const-string v0, "CONTAINER_EVENT_ADMIN_LOCKED"

    return-object v0

    .line 118
    :pswitch_15
    const-string v0, "CONTAINER_EVENT_LOCKSCREEN_STATE_CHANGED"

    return-object v0

    .line 116
    :pswitch_18
    const-string v0, "DEVICE_EVENT_OWNER_LICENSE_ACTIVATED"

    return-object v0

    .line 114
    :pswitch_1b
    const-string v0, "DEVICE_EVENT_OWNER_ACTIVATED"

    return-object v0

    .line 112
    :pswitch_1e
    const-string v0, "CONTAINER_EVENT_LICENSE_EXPIRED"

    return-object v0

    .line 110
    :pswitch_21
    const-string v0, "CONTAINER_EVENT_LICENSE_ACTIVATED"

    return-object v0

    .line 108
    :pswitch_24
    const-string v0, "CONTAINER_EVENT_REMOVED"

    return-object v0

    .line 106
    :pswitch_27
    const-string v0, "CONTAINER_EVENT_RESET"

    return-object v0

    .line 104
    :pswitch_2a
    const-string v0, "CONTAINER_EVENT_UNLOCKED"

    return-object v0

    .line 102
    :pswitch_2d
    const-string v0, "CONTAINER_EVENT_LOCKED"

    return-object v0

    .line 100
    :pswitch_30
    const-string v0, "CONTAINER_EVENT_SWITCH"

    return-object v0

    .line 98
    :pswitch_33
    const-string v0, "CONTAINER_EVENT_SHUTDOWN"

    return-object v0

    .line 96
    :pswitch_36
    const-string v0, "CONTAINER_EVENT_RUNNING"

    return-object v0

    .line 94
    :pswitch_39
    const-string v0, "CONTAINER_EVENT_CREATED"

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static unregister(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    .registers 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/os/ContainerStateReceiver;

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 320
    return-void
.end method

.method public onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 330
    return-void
.end method

.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 166
    return-void
.end method

.method public onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 342
    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method public onContainerOneLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 346
    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 243
    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 273
    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 179
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 194
    return-void
.end method

.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 205
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 233
    return-void
.end method

.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 282
    return-void
.end method

.method public onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 291
    return-void
.end method

.method public onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 300
    return-void
.end method

.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 253
    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 263
    return-void
.end method

.method public onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "visible"    # Z
    .param p4, "b"    # Landroid/os/Bundle;

    .line 310
    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "b"    # Landroid/os/Bundle;

    .line 213
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 353
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 355
    .local v0, "um":Landroid/os/UserManager;
    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 356
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 357
    .local v1, "b":Landroid/os/Bundle;
    sget-object v2, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 358
    .local v2, "userHandle":I
    sget-object v3, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 360
    .local v3, "event":I
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 361
    .local v4, "ui":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_48

    .line 362
    sget-object v5, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive failed to get UserInfo from handle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 366
    :cond_48
    sget-object v5, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/os/ContainerStateReceiver;->toEventString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    packed-switch v3, :pswitch_data_de

    .line 427
    :pswitch_67
    sget-object v5, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dd

    .line 424
    :pswitch_82
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerLicenseExpired(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 425
    goto :goto_dd

    .line 384
    :pswitch_86
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerOneLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 385
    goto :goto_dd

    .line 421
    :pswitch_8a
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 422
    goto :goto_dd

    .line 418
    :pswitch_8e
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 419
    goto :goto_dd

    .line 415
    :pswitch_92
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 416
    goto :goto_dd

    .line 411
    :pswitch_96
    sget-object v5, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    .line 412
    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 411
    invoke-virtual {p0, p1, v2, v5, v1}, Landroid/os/ContainerStateReceiver;->onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V

    .line 413
    goto :goto_dd

    .line 408
    :pswitch_a1
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 409
    goto :goto_dd

    .line 405
    :pswitch_a5
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 406
    goto :goto_dd

    .line 399
    :pswitch_a9
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 400
    goto :goto_dd

    .line 396
    :pswitch_ad
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 397
    goto :goto_dd

    .line 393
    :pswitch_b1
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 394
    goto :goto_dd

    .line 402
    :pswitch_b5
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 403
    goto :goto_dd

    .line 390
    :pswitch_b9
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 391
    goto :goto_dd

    .line 387
    :pswitch_bd
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 388
    goto :goto_dd

    .line 378
    :pswitch_c1
    if-nez v2, :cond_c7

    .line 379
    invoke-virtual {p0, p1, v1}, Landroid/os/ContainerStateReceiver;->onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_dd

    .line 380
    :cond_c7
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 381
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_dd

    .line 375
    :pswitch_d1
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 376
    goto :goto_dd

    .line 372
    :pswitch_d5
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 373
    goto :goto_dd

    .line 369
    :pswitch_d9
    invoke-virtual {p0, p1, v2, v1}, Landroid/os/ContainerStateReceiver;->onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 370
    nop

    .line 430
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "userHandle":I
    .end local v3    # "event":I
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_dd
    :goto_dd
    return-void

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_c1
        :pswitch_bd
        :pswitch_b9
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8a
        :pswitch_86
        :pswitch_82
    .end packed-switch
.end method
