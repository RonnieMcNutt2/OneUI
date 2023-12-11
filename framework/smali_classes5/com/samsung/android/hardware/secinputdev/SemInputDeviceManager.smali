.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;
.super Ljava/lang/Object;
.source "SemInputDeviceManager.java"


# static fields
.field public static final CLEAR_COVER_CLOSED:I = 0x3

.field public static final CLEAR_COVER_OPENED:I = 0x0

.field public static final DEVID_DEFAULT_TSP:I = 0x1

.field public static final DEVID_EXTRA_TSP:I = 0x2

.field public static final DEVID_KEY:I = 0x15

.field public static final DEVID_KEYBOARD:I = 0x1f

.field public static final DEVID_SPEN:I = 0xb

.field public static final DEVID_TAAS:I = 0x29

.field public static final DEVID_TSP_MAX:I = 0x3

.field public static final EAR_DETECT_DISABLE:I = 0x0

.field public static final EAR_DETECT_HIGH_SENSE_ENABLE:I = 0x3

.field public static final EAR_DETECT_LOW_SENSE_ENABLE:I = 0x1

.field public static final EXTERNAL_NOISE_DEX:I = 0x1

.field public static final FOD_PRESS_FAST_MODE_DISABLE:I = 0x0

.field public static final FOD_PRESS_FAST_MODE_ENABLE:I = 0x1

.field public static final FOD_STRICT_MODE_DISABLE:I = 0x0

.field public static final FOD_STRICT_MODE_ENABLE:I = 0x1

.field public static final FORCE_OFF:I = 0x15

.field public static final FORCE_ON:I = 0x16

.field public static final KEY_BACK:I = 0x9e

.field public static final KEY_EMERGENCY:I = 0x2a0

.field public static final KEY_HOME:I = 0xac

.field public static final KEY_HOT:I = 0xfc

.field public static final KEY_MICMUTE:I = 0xf8

.field public static final KEY_POWER:I = 0x74

.field public static final KEY_RECENT:I = 0xfe

.field public static final KEY_VOLUMEDOWN:I = 0x72

.field public static final KEY_VOLUMEUP:I = 0x73

.field public static final LCD_DOZE1:I = 0x3

.field public static final LCD_DOZE2:I = 0x4

.field public static final LCD_EARLY_EVENT:Z = false

.field public static final LCD_LATE_EVENT:Z = true

.field public static final LCD_NONE:I = 0x0

.field public static final LCD_OFF:I = 0x1

.field public static final LCD_ON:I = 0x2

.field public static final MODE_DISABLE:I = 0x0

.field public static final MODE_ENABLE:I = 0x1

.field public static final MOTION_CONTROL_AIVF_THRESHOLD_TO_HIGH:I = 0x2

.field public static final MOTION_CONTROL_AIVF_THRESHOLD_TO_LOW:I = 0x0

.field public static final MOTION_CONTROL_AIVF_THRESHOLD_TO_MID:I = 0x1

.field public static final MOTION_CONTROL_ALL_ORIENTATION_0:I = 0x14

.field public static final MOTION_CONTROL_ALL_ORIENTATION_180:I = 0x16

.field public static final MOTION_CONTROL_ALL_ORIENTATION_270:I = 0x17

.field public static final MOTION_CONTROL_ALL_ORIENTATION_90:I = 0x15

.field public static final MOTION_CONTROL_ALL_SIP_IS_DISABLED:I = 0xc

.field public static final MOTION_CONTROL_ALL_SIP_IS_ENABLED:I = 0xb

.field public static final MOTION_CONTROL_TYPE_AIVF_EVENT:Ljava/lang/String; = "AIVF_EVENT"

.field public static final MOTION_CONTROL_TYPE_AIVF_SENSITIVITY:Ljava/lang/String; = "AIVF_SENSITIVITY"

.field public static final MOTION_CONTROL_TYPE_AIVF_THRESHOLD:Ljava/lang/String; = "AIVF_THRESHOLD"

.field public static final MOTION_CONTROL_TYPE_AIVF_VOLUME:Ljava/lang/String; = "AIVF_VOLUME"

.field public static final MOTION_CONTROL_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final MOTION_ENABLE_TYPE_AIVF:Ljava/lang/String; = "AIVF"

.field public static final MOTION_ENABLE_TYPE_PALM:Ljava/lang/String; = "PALM"

.field public static final MOTION_ENABLE_TYPE_PALM_SWIPE:Ljava/lang/String; = "PALM_SWIPE"

.field public static final MOTION_ERROR_TYPE_NOT_LOADED_SERVICE:I = -0x2

.field public static final MOTION_ERROR_TYPE_NOT_SUPPORT_HARDWARE:I = -0x1

.field public static final MOTION_ERROR_TYPE_NOT_SUPPORT_MOTION:I = -0x3

.field public static final MOTION_ERROR_TYPE_NULL_STRING:I = -0x4

.field public static final MOTION_TYPE_AIVF:I = 0x5

.field public static final MOTION_TYPE_AWD:I = 0x6

.field public static final MOTION_TYPE_EAR_DETECTION:I = 0x3

.field public static final MOTION_TYPE_GRIP_FILTER:I = 0x4

.field public static final MOTION_TYPE_NONE:I = 0x0

.field public static final MOTION_TYPE_PALM_MUTE:I = 0x1

.field public static final MOTION_TYPE_PALM_SWIPE:I = 0x2

.field public static final MOTION_TYPE_RAWDATA_ALWAYS_ON:I = 0x7

.field public static final REPORT_INFO_HANDEDGE:Ljava/lang/String; = "handedge"

.field public static final RESULT_NG:I = -0x1

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_STR_NA:Ljava/lang/String; = "NA"

.field public static final RESULT_STR_NG:Ljava/lang/String; = "NG"

.field public static final SERVICE_SHUTDOWN:I = -0x1

.field public static final SPEN_MODE_NONE:I = 0x0

.field public static final SPEN_MODE_POGO_KEYBOARD:I = 0x2

.field public static final SPEN_MODE_SPEN_COVER:I = 0x1

.field public static final SUPPORT_AOT:I = 0x1

.field public static final SUPPORT_INPUT_MONITOR:I = 0x10000

.field public static final SUPPORT_MISCALIBRATION:I = 0x200

.field public static final SUPPORT_MULTICALIBRATION:I = 0x400

.field public static final SUPPORT_OPENSHORT:I = 0x100

.field public static final SUPPORT_PRESSURE:I = 0x2

.field public static final SUPPORT_PROX_LP_SCAN_ENABLED:I = 0x40

.field public static final SUPPORT_RAWDATA_MOTION_AIVF:I = 0x200000

.field public static final SUPPORT_RAWDATA_MOTION_PALM:I = 0x100000

.field public static final SUPPORT_RAWDATA_MOTION_PALM_SWIPE:I = 0x400000

.field public static final SUPPORT_RR120:I = 0x4

.field public static final SUPPORT_SYSINPUT_ENABLED:I = 0x20

.field public static final SUPPORT_VRR:I = 0x8

.field public static final SUPPORT_WIRELESS_TX:I = 0x10

.field public static final SYNC_CHANGED_30_TO_60:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemInputDeviceManager"


# instance fields
.field private service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, "SemInputDeviceManager"

    if-nez p1, :cond_d

    .line 150
    const-string v1, "ISemInputDeviceManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 153
    :cond_d
    const-string v1, "SemInputDeviceManager ++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 155
    return-void
.end method

.method private activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I
    .registers 8
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .param p2, "mode"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;
    .param p3, "state"    # Z

    .line 181
    const/4 v0, -0x1

    .line 183
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_d

    .line 184
    const-string v1, "activate: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v0

    .line 188
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :try_start_37
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_3f

    move v0, v1

    .line 194
    goto :goto_45

    .line 192
    :catch_3f
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_45
    return v0
.end method

.method private getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;
    .registers 7
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    .line 251
    const-string v0, "NG"

    .line 253
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_f

    .line 254
    const-string/jumbo v1, "getProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-object v0

    .line 258
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :try_start_30
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_38

    move-object v0, v1

    .line 264
    goto :goto_3f

    .line 262
    :catch_38
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "getProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    return-object v0
.end method

.method private runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 292
    const-string v0, "NG"

    .line 294
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_f

    .line 295
    const-string/jumbo v1, "runCommand: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v0

    .line 299
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runCommand: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_30
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_36} :catch_38

    move-object v0, v1

    .line 305
    goto :goto_3e

    .line 303
    :catch_38
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    return-object v0
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I
    .registers 4
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I
    .registers 8
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .param p2, "command"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;
    .param p3, "mode"    # Ljava/lang/String;

    .line 202
    const/4 v0, -0x1

    .line 204
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 205
    const-string/jumbo v1, "setProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v0

    .line 209
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->CMD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_43
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_49} :catch_4b

    move v0, v1

    .line 215
    goto :goto_52

    .line 213
    :catch_4b
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_52
    return v0
.end method

.method private setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I
    .registers 8
    .param p1, "device"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;
    .param p2, "property"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;
    .param p3, "mode"    # Ljava/lang/String;

    .line 230
    const/4 v0, -0x1

    .line 232
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 233
    const-string/jumbo v1, "setProperty: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v0

    .line 237
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProperty: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_39
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_41

    move v0, v1

    .line 243
    goto :goto_48

    .line 241
    :catch_41
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "setProperty: Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_48
    return v0
.end method


# virtual methods
.method public enableMotion(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;ZLjava/lang/String;)I
    .registers 5
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 803
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableMotion(Ljava/lang/String;ZLjava/lang/String;)I
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "client"    # Ljava/lang/String;

    .line 783
    const/4 v0, -0x1

    .line 785
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_d

    .line 786
    const-string v1, "enableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    return v0

    .line 791
    :cond_d
    :try_start_d
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->enableMotion(Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_13

    move v0, v1

    .line 794
    goto :goto_19

    .line 792
    :catch_13
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_19
    return v0
.end method

.method public getAodActiveArea(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 572
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->AOD_ACTIVE_AREA:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommandList(I)Ljava/lang/String;
    .registers 6
    .param p1, "devid"    # I

    .line 272
    const-string v0, "NG"

    .line 274
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_f

    .line 275
    const-string/jumbo v1, "getCommandList: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v0

    .line 280
    :cond_f
    :try_start_f
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getCommandList(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)Ljava/lang/String;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_19

    move-object v0, v1

    .line 283
    goto :goto_1f

    .line 281
    :catch_19
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1f
    return-object v0
.end method

.method public getDeviceEnabled(I)I
    .registers 6
    .param p1, "devid"    # I

    .line 635
    const/4 v0, -0x1

    .line 637
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 638
    const-string/jumbo v1, "getDeviceEnabled: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v0

    .line 643
    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getDeviceEnabled(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_18

    move v0, v1

    .line 646
    goto :goto_1e

    .line 644
    :catch_18
    move-exception v1

    .line 645
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return v0
.end method

.method public getFodInfo(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 558
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->FOD_INFO:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFodPosition(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 565
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->FOD_POS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPressStateAll()Ljava/lang/String;
    .registers 5

    .line 328
    const-string v0, ""

    .line 330
    .local v0, "keystate":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_f

    .line 331
    const-string/jumbo v1, "getKeyPressStateAll: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v0

    .line 336
    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getKeyPressStateAll()Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_15

    move-object v0, v1

    .line 339
    goto :goto_1b

    .line 337
    :catch_15
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    return-object v0
.end method

.method public getMotionControl(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 857
    const/4 v0, -0x1

    .line 859
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 860
    const-string/jumbo v1, "getMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return v0

    .line 865
    :cond_e
    :try_start_e
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getMotionControl(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 868
    goto :goto_1a

    .line 866
    :catch_14
    move-exception v1

    .line 867
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method public getScrubPosition(I)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I

    .line 534
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->SCRUB_POS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpenPosition()Ljava/lang/String;
    .registers 3

    .line 593
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->EPEN_POS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->getProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDevice(I)I
    .registers 6
    .param p1, "devid"    # I

    .line 161
    const/4 v0, -0x1

    .line 163
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 164
    const-string/jumbo v1, "getSupportDevice: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0

    .line 169
    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getSupportDevice(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_18

    move v0, v1

    .line 172
    goto :goto_1e

    .line 170
    :catch_18
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return v0
.end method

.method public getTspSupportFeature(I)I
    .registers 6
    .param p1, "devid"    # I

    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 517
    const-string/jumbo v1, "getTspSupportFeature: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return v0

    .line 522
    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->getTspSupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;)I

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_18

    move v0, v1

    .line 525
    goto :goto_1e

    .line 523
    :catch_18
    move-exception v1

    .line 524
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return v0
.end method

.method public isEnableMotion(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;Ljava/lang/String;)I
    .registers 4
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;
    .param p2, "client"    # Ljava/lang/String;

    .line 850
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "client"    # Ljava/lang/String;

    .line 830
    const/4 v0, -0x1

    .line 832
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 833
    const-string/jumbo v1, "isEnableMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return v0

    .line 838
    :cond_e
    :try_start_e
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isEnableMotion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 841
    goto :goto_1a

    .line 839
    :catch_14
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method public isKeyPressedByKeycode(I)Z
    .registers 6
    .param p1, "keycode"    # I

    .line 348
    const/4 v0, 0x0

    .line 350
    .local v0, "keystate":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 351
    const-string/jumbo v1, "isKeyPressedByKeycode: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v0

    .line 356
    :cond_e
    :try_start_e
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isKeyPressedByKeycode(I)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 359
    goto :goto_1a

    .line 357
    :catch_14
    move-exception v1

    .line 358
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method public isSupportMotion(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;)Z
    .registers 3
    .param p1, "motionType"    # Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;

    .line 776
    invoke-virtual {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$MotionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportMotion(Ljava/lang/String;)Z
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 759
    const-string/jumbo v1, "isSupportMotion: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    return v0

    .line 764
    :cond_e
    :try_start_e
    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->isSupportMotion(Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 767
    goto :goto_1a

    .line 765
    :catch_14
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method public registerListener(ILjava/lang/String;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 658
    const-string/jumbo v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    return v0

    .line 663
    :cond_e
    const/4 v3, 0x0

    :try_start_f
    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_15

    move v0, v1

    .line 666
    goto :goto_1b

    .line 664
    :catch_15
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    return v0
.end method

.method public registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 696
    const/4 v0, 0x0

    .line 698
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 699
    const-string/jumbo v1, "registerListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v0

    .line 704
    :cond_e
    :try_start_e
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->registerListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 707
    goto :goto_1a

    .line 705
    :catch_14
    move-exception v1

    .line 706
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method public runEmergency(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "devid"    # I
    .param p2, "cmd"    # Ljava/lang/String;

    .line 314
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runEmergencyCurrentTsp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 321
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->runCommand(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendRawdataTsp(I[I)I
    .registers 7
    .param p1, "devid"    # I
    .param p2, "data"    # [I

    .line 736
    const/4 v0, -0x1

    .line 738
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 739
    const-string/jumbo v1, "sendRawdataTsp: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v0

    .line 744
    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v3

    invoke-interface {v1, v3, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->sendRawdataTsp(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;[I)I

    move-result v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_18

    move v0, v1

    .line 747
    goto :goto_1e

    .line 745
    :catch_18
    move-exception v1

    .line 746
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 749
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return v0
.end method

.method public setAodEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 433
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->AOD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAodRect(IIII)I
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .line 426
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->AOD_RECT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setBrushEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 419
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->BRUSH:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodEnable(III)I
    .registers 7
    .param p1, "mode"    # I
    .param p2, "pressFast"    # I
    .param p3, "strictMode"    # I

    .line 440
    const/4 v0, 0x1

    if-ne p1, v0, :cond_29

    .line 441
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 443
    :cond_29
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodIconVisible(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 450
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD_ICON_VISIBLE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodLpMode(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 465
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD_LP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFodRect(IIII)I
    .registers 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "mode":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->FOD_RECT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setGripData(Ljava/lang/String;)I
    .registers 4
    .param p1, "mode"    # Ljava/lang/String;

    .line 375
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->CURRENT_TSP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->GRIP_DATA:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLowSensitivityMode(II)I
    .registers 6
    .param p1, "mode"    # I
    .param p2, "level"    # I

    .line 507
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->LOW_SENSITIVITY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLowSensitivityModeEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 500
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->LOW_SENSITIVITY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setMotionControl(Ljava/lang/String;ILjava/lang/String;)I
    .registers 8
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "control"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 810
    const/4 v0, -0x1

    .line 812
    .local v0, "ret":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 813
    const-string/jumbo v1, "setMotionControl: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return v0

    .line 818
    :cond_e
    :try_start_e
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 821
    goto :goto_1a

    .line 819
    :catch_14
    move-exception v1

    .line 820
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method

.method public setNoteMode(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 391
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->NOTE_APP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPocketModeEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 493
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->POCKET_MODE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setProxPowerOff(II)I
    .registers 7
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 541
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;->PROX_OFF:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Property;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSingletapEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 472
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SINGLETAP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSipMode(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 382
    if-nez p1, :cond_5

    const/16 v0, 0xc

    goto :goto_7

    :cond_5
    const/16 v0, 0xb

    .line 383
    .local v0, "control":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ALL"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setMotionControl(Ljava/lang/String;ILjava/lang/String;)I

    .line 384
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SIP:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public setSpayEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 405
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPAY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenBleChargeMode(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 607
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_BLE_CHARGING:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenCoverType(I)I
    .registers 6
    .param p1, "type"    # I

    .line 586
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_COVER_TYPE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenEnabled(IIZ)I
    .registers 6
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 579
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public setSpenLowCurrentMode(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 621
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_LOWCURRENT:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenPdctLowSensitivityEnable(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 614
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_PDCT_LOWSENSITIVITY:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenPower(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 600
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_POWER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSpenPowerSavingMode(I)I
    .registers 6
    .param p1, "mode"    # I

    .line 628
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->SPEN:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SPEN_SAVING_MODE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setStylusEnable(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 412
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->STYLUS:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setSyncChanged(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 486
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->SYNC_CHANGED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTemperature(I)I
    .registers 5
    .param p1, "value"    # I

    .line 398
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->TEMPERATURE:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTouchableArea(I)I
    .registers 5
    .param p1, "mode"    # I

    .line 479
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->TOUCHABLE_AREA:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTspEnabled(IIZ)I
    .registers 6
    .param p1, "devid"    # I
    .param p2, "mode"    # I
    .param p3, "state"    # Z

    .line 368
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    invoke-static {p2}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->activate(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$DisplayState;Z)I

    move-result v0

    return v0
.end method

.method public setWirelessChargingMode(II)I
    .registers 7
    .param p1, "devid"    # I
    .param p2, "mode"    # I

    .line 548
    const/4 v0, 0x1

    const-string v1, ""

    if-ne p1, v0, :cond_1f

    .line 549
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->NOT_SPECIFIED:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 551
    :cond_1f
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;->getFromInt(I)Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;->WIRELESS_CHARGER:Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setProperty(Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputConstants$Command;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unregisterListener(ILjava/lang/String;)Z
    .registers 7
    .param p1, "type"    # I
    .param p2, "client"    # Ljava/lang/String;

    .line 675
    const/4 v0, 0x0

    .line 677
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 678
    const-string/jumbo v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return v0

    .line 683
    :cond_e
    const/4 v3, 0x0

    :try_start_f
    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_15

    move v0, v1

    .line 686
    goto :goto_1b

    .line 684
    :catch_15
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    return v0
.end method

.method public unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "client"    # Ljava/lang/String;

    .line 716
    const/4 v0, 0x0

    .line 718
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->service:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    const-string v2, "SemInputDeviceManager"

    if-nez v1, :cond_e

    .line 719
    const-string/jumbo v1, "unregisterListener: service is not enabled"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v0

    .line 724
    :cond_e
    :try_start_e
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->unregisterListener(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move v0, v1

    .line 727
    goto :goto_1a

    .line 725
    :catch_14
    move-exception v1

    .line 726
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to call interface: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 729
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1a
    return v0
.end method
