.class public Lcom/samsung/android/multicontrol/MCTriggerManager;
.super Ljava/lang/Object;
.source "MCTriggerManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final TAG_PREFIX:Ljava/lang/String;

.field private desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private isDexEnabled:Z

.field isEnabled:Z

.field mContext:Landroid/content/Context;

.field mDexInputChannel:Landroid/view/InputChannel;

.field mDexInputMonitor:Landroid/view/InputMonitor;

.field mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

.field mInputChannel:Landroid/view/InputChannel;

.field mInputMonitor:Landroid/view/InputMonitor;

.field mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

.field mLooper:Landroid/os/Looper;

.field semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetisDexEnabled(Lcom/samsung/android/multicontrol/MCTriggerManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDexEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisDexEnabled(Lcom/samsung/android/multicontrol/MCTriggerManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDexEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "MultiControl@"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG_PREFIX:Ljava/lang/String;

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDexEnabled:Z

    .line 38
    new-instance v0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multicontrol/MCTriggerManager$1;-><init>(Lcom/samsung/android/multicontrol/MCTriggerManager;)V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    .line 35
    return-void
.end method

.method private isDesktopModeEnabled()Z
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 74
    return v1

    .line 76
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 77
    .local v0, "semDesktopModeState":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method private registerDesktopModeListener()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    .line 58
    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 60
    if-nez v0, :cond_f

    .line 61
    return-void

    .line 63
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 65
    return-void
.end method

.method private unregisterDesktopModeListener()V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->semDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_9

    .line 69
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->desktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 70
    :cond_9
    return-void
.end method


# virtual methods
.method public dump()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInputChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInputReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDexInputChannel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDexInputReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public enable(Z)V
    .registers 12
    .param p1, "enable"    # Z

    .line 82
    const-string/jumbo v0, "input"

    const/4 v1, 0x0

    if-eqz p1, :cond_7d

    .line 83
    :try_start_6
    iget-boolean v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-eqz v2, :cond_b

    .line 84
    return-void

    .line 85
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v3, "[enable] true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    .line 87
    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 88
    .local v2, "inputManager":Landroid/hardware/input/InputManager;
    const-string v3, "MultiControl_0"

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    .line 89
    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    .line 90
    new-instance v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget-object v4, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    iget-object v8, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;-><init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDesktopModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 93
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 94
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    iget-object v3, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    .line 95
    .local v3, "displayContext":Landroid/content/Context;
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    move-object v2, v0

    .line 96
    const-string v0, "MultiControl_2"

    invoke-virtual {v2, v0, v4}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    .line 98
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    .line 99
    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget-object v5, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    iget-object v9, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;-><init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    .line 102
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v3    # "displayContext":Landroid/content/Context;
    :cond_79
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->registerDesktopModeListener()V

    .line 103
    .end local v2    # "inputManager":Landroid/hardware/input/InputManager;
    goto :goto_b3

    .line 104
    :cond_7d
    iget-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-nez v0, :cond_82

    .line 105
    return-void

    .line 107
    :cond_82
    iput-boolean v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    .line 108
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v1, "[enable] false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_92

    .line 110
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 112
    :cond_92
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_99

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->dispose()V

    .line 115
    :cond_99
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_a0

    .line 116
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 118
    :cond_a0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_a7

    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->dispose()V

    .line 121
    :cond_a7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    .line 122
    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->unregisterDesktopModeListener()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b3} :catch_b4

    .line 130
    :goto_b3
    goto :goto_bc

    .line 128
    :catch_b4
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v2, "[enableTriggerDetection]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bc
    return-void
.end method

.method public setTriggerThreshold(I)V
    .registers 5
    .param p1, "threshold"    # I

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {v0, p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->setTriggerThreshold(I)V

    .line 139
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_e

    .line 140
    invoke-virtual {v0, p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->setTriggerThreshold(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 144
    :cond_e
    goto :goto_17

    .line 142
    :catch_f
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v2, "[setTriggerThreshold]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_17
    return-void
.end method
