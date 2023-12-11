.class Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;
.super Landroid/hardware/input/IInputDeviceBatteryListener$Stub;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalInputDeviceBatteryListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManagerGlobal;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManagerGlobal;)V
    .registers 2

    .line 1171
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    return-void
.end method


# virtual methods
.method public onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .registers 8
    .param p1, "state"    # Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1174
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v0}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmBatteryListenersLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1175
    :try_start_7
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 1176
    :cond_11
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;->this$0:Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/InputManagerGlobal;->-$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 1177
    .local v1, "entry":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    if-nez v1, :cond_23

    monitor-exit v0

    return-void

    .line 1179
    :cond_23
    iput-object p1, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1180
    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1181
    .local v2, "numDelegates":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    if-ge v3, v2, :cond_3e

    .line 1182
    iget-object v4, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v5, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    .line 1183
    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 1181
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1185
    .end local v1    # "entry":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "numDelegates":I
    .end local v3    # "i":I
    :cond_3e
    monitor-exit v0

    .line 1186
    return-void

    .line 1185
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v1
.end method
