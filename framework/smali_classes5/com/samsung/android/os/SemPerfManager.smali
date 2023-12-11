.class public Lcom/samsung/android/os/SemPerfManager;
.super Ljava/lang/Object;
.source "SemPerfManager.java"


# static fields
.field static BOARD_PLATFORM:Ljava/lang/String; = null

.field public static final COMMAND_ACTIVITY_EXECUTION:Ljava/lang/String; = "EXEC_ACTIVITY"

.field public static final COMMAND_BROWSER_DASH_MODE:Ljava/lang/String; = "SBROWSER_DASH_MODE"

.field public static final COMMAND_BROWSER_PAGE_LOADING:Ljava/lang/String; = "SBROWSER_PAGE_LOADING"

.field public static final COMMAND_BUS_DCVS_GOVERNOR_CHANGE:Ljava/lang/String; = "BUS_DCVS_GOVERNOR"

.field public static final COMMAND_FINGER_HOVER_OFF:Ljava/lang/String; = "FINGER_HOVER_OFF"

.field public static final COMMAND_FINGER_HOVER_ON:Ljava/lang/String; = "FINGER_HOVER_ON"

.field public static final COMMAND_GAME_TOUCH_BOOSTER:Ljava/lang/String; = "GAME_TOUCH_BOOSTER"

.field public static final COMMAND_GENERAL_SHELL:Ljava/lang/String; = "GENERAL_SHELL"

.field public static final COMMAND_GESTURE_DETECTED:Ljava/lang/String; = "GESTURE_DETECTED"

.field public static final COMMAND_HOVERING_EVENT:Ljava/lang/String; = "HOVERING_EVENT"

.field public static final COMMAND_REQUEST_CACHE_DROP:Ljava/lang/String; = "REQ_DROP_CACHE"

.field public static final COMMAND_SAMSUNG_SIP:Ljava/lang/String; = "KNOWN_APP_SIP"

.field public static final COMMAND_SCREEN_ROTATION:Ljava/lang/String; = "TYPE_WINDOW_ORIENTATION"

.field public static final COMMAND_SCROLL:Ljava/lang/String; = "TYPE_SCROLL"

.field public static final COMMAND_SMOOTH_SCROLL:Ljava/lang/String; = "SMOOTH_SCROLL"

.field public static final COMMAND_SUSTAINED_PERF:Ljava/lang/String; = "SUSTAINED_PERF"

.field public static final COMMAND_USB_TETHERING:Ljava/lang/String; = "USBTETHERING"

.field public static final COMMAND_VR_MODE:Ljava/lang/String; = "VR_MODE"

.field static final DEVICE_TYPE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SemPerfManager"

.field public static final VALUE_GAME_TOUCH_BOOSTER_HIGH:Ljava/lang/String; = "high_game_touch_booster"

.field public static final VALUE_GAME_TOUCH_BOOSTER_LOW:Ljava/lang/String; = "low_game_touch_booster"

.field public static final VALUE_GAME_TOUCH_BOOSTER_MID:Ljava/lang/String; = "mid_game_touch_booster"

.field public static final VALUE_GAME_TOUCH_BOOSTER_OFF:Ljava/lang/String; = "off_game_touch_booster"

.field private static mCommandHandler:Landroid/os/Handler;

.field static volatile sCfmsService:Landroid/os/ICustomFrequencyManager;

.field static sIsDebugLevelHigh:Z

.field static volatile sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# instance fields
.field mSupportedCPUCoreNum:[I

.field mSupportedCPUCoreNumForSSRM:[I

.field mSupportedCPUFrequency:[I

.field mSupportedCPUFrequencyForSSRM:[I


# direct methods
.method static bridge synthetic -$$Nest$smsendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/os/SemPerfManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    nop

    .line 25
    const-string/jumbo v0, "ro.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4948"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    .line 90
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->BOARD_PLATFORM:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->DEVICE_TYPE:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/samsung/android/os/SemPerfManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/os/SemPerfManager$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->mCommandHandler:Landroid/os/Handler;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 116
    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNum:[I

    .line 103
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUCoreNumForSSRM:[I

    .line 104
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequency:[I

    .line 105
    iput-object v0, p0, Lcom/samsung/android/os/SemPerfManager;->mSupportedCPUFrequencyForSSRM:[I

    .line 110
    return-void
.end method

.method private static initService()V
    .registers 2

    .line 186
    :try_start_0
    sget-object v0, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-nez v0, :cond_12

    .line 187
    const-string v0, "CustomFrequencyManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 188
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    .line 189
    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 193
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_12
    sget-object v0, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_25

    .line 194
    const-string/jumbo v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .restart local v0    # "b":Landroid/os/IBinder;
    if-eqz v0, :cond_25

    .line 196
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 201
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_25
    goto :goto_2a

    .line 199
    :catch_26
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2a
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 207
    sget-boolean v0, Lcom/samsung/android/os/SemPerfManager;->sIsDebugLevelHigh:Z

    if-eqz v0, :cond_7

    .line 208
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_7
    return-void
.end method

.method public static onScrollEvent(Z)V
    .registers 3
    .param p0, "isScroll"    # Z

    .line 121
    if-eqz p0, :cond_5

    const-string v0, "TRUE"

    goto :goto_7

    :cond_5
    const-string v0, "FALSE"

    :goto_7
    const-string v1, "TYPE_SCROLL"

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static onSmoothScrollEvent(Z)V
    .registers 3
    .param p0, "isScroll"    # Z

    .line 127
    if-eqz p0, :cond_5

    const-string v0, "TRUE"

    goto :goto_7

    :cond_5
    const-string v0, "FALSE"

    :goto_7
    const-string v1, "SMOOTH_SCROLL"

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private static sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v1, :cond_c

    .line 156
    :cond_9
    invoke-static {}, Lcom/samsung/android/os/SemPerfManager;->initService()V

    .line 159
    :cond_c
    const-string v1, "TYPE_SCROLL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "SMOOTH_SCROLL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "GESTURE_DETECTED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "EXEC_ACTIVITY"

    .line 160
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "CLOCK_SET_TORCH_LIGHT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "MULTIWINDOW_FOCUS_PID"

    .line 161
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "TASK_BOOST"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    goto :goto_77

    .line 166
    :cond_45
    const-string v1, "HOVERING_EVENT"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "SBROWSER_DASH_MODE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "SUSTAINED_PERF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "GAME_TOUCH_BOOSTER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    const-string v1, "NORMAL_TOUCH_BOOSTER"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 167
    :cond_6d
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-eqz v1, :cond_92

    .line 168
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    invoke-interface {v1, p0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    .line 162
    :cond_77
    :goto_77
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    if-eqz v1, :cond_92

    .line 163
    sget-object v1, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p0, p1}, Landroid/os/ICustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_80} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_81

    goto :goto_92

    .line 175
    :catch_81
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 177
    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_93

    .line 171
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8a
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/DeadObjectException;
    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sCfmsService:Landroid/os/ICustomFrequencyManager;

    .line 173
    sput-object v0, Lcom/samsung/android/os/SemPerfManager;->sdhmservice:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 174
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 179
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_92
    :goto_92
    nop

    .line 180
    :goto_93
    return-void
.end method

.method public static sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 138
    :try_start_0
    sget-object v0, Lcom/samsung/android/os/SemPerfManager;->mCommandHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 140
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 144
    sget-object v2, Lcom/samsung/android/os/SemPerfManager;->mCommandHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    .line 147
    nop

    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_25

    .line 145
    :catch_21
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method
