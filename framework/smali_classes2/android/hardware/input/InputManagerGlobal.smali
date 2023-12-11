.class public final Landroid/hardware/input/InputManagerGlobal;
.super Ljava/lang/Object;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;,
        Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;,
        Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;,
        Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;,
        Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;,
        Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;,
        Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightState;
    }
.end annotation


# static fields
.field private static final CONVERSION_TYPE_SPEN_TO_MOUSE:I = 0x2774

.field private static final DEBUG:Z

.field private static final MSG_MULTI_FINGER_GESTURE:I = 0x1

.field private static final MSG_POINTERICON_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InputManagerGlobal"

.field private static sInstance:Landroid/hardware/input/InputManagerGlobal;


# instance fields
.field private mBatteryListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryListenersLock:Ljava/lang/Object;

.field private final mIm:Landroid/hardware/input/IInputManager;

.field private mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

.field private mIsStylusFromTouchpad:Z

.field private mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

.field private final mKeyboardBacklightListenerLock:Ljava/lang/Object;

.field private mKeyboardBacklightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mLidStateChangedListener:Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;

.field private final mLidStateLock:Ljava/lang/Object;

.field private mMultiFingerGestureListener:Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

.field private final mMultiFingerGestureLock:Ljava/lang/Object;

.field private mOnMultiFingerGestureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPointerIconChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSwitchEventChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTabletModeChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIcon:Landroid/view/PointerIcon;

.field private mPointerIconChangedListener:Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

.field private final mPointerIconLock:Ljava/lang/Object;

.field private mPointerIconType:I

.field private mSemOnLidStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchEventChangedListener:Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

.field private final mSwitchEventChangedLock:Ljava/lang/Object;

.field private final mVelocityTrackerStrategy:Ljava/lang/String;

.field private mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

.field private final mWirelessKeyboardShareLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatteryListeners(Landroid/hardware/input/InputManagerGlobal;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBatteryListenersLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyboardBacklightListenerLock(Landroid/hardware/input/InputManagerGlobal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyboardBacklightListeners(Landroid/hardware/input/InputManagerGlobal;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManagerGlobal;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->onInputDevicesChanged([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monLidStateChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->onLidStateChanged(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monMultiFingerGesture(Landroid/hardware/input/InputManagerGlobal;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->onMultiFingerGesture(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPointerIconChanged(Landroid/hardware/input/InputManagerGlobal;ILandroid/view/PointerIcon;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputManagerGlobal;->onPointerIconChanged(ILandroid/view/PointerIcon;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSwitchEventChanged(Landroid/hardware/input/InputManagerGlobal;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->onSwitchEventChanged(IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManagerGlobal;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal;->onTabletModeChanged(JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monWirelessKeyboardShareChanged(Landroid/hardware/input/InputManagerGlobal;JILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal;->onWirelessKeyboardShareChanged(JILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 93
    const-string v0, "InputManagerGlobal"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/IInputManager;)V
    .registers 6
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    .line 169
    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "strategy":Ljava/lang/String;
    :try_start_4c
    invoke-interface {p1}, Landroid/hardware/input/IInputManager;->getVelocityTrackerStrategy()Ljava/lang/String;

    move-result-object v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_50} :catch_52

    move-object v0, v1

    .line 175
    goto :goto_6b

    .line 173
    :catch_52
    move-exception v1

    .line 174
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get VelocityTracker strategy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputManagerGlobal"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_6b
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static clearInstance()V
    .registers 2

    .line 217
    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    .line 218
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static containsDeviceId([II)Z
    .registers 4
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .line 367
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    .line 368
    aget v1, p0, v0

    if-ne v1, p1, :cond_a

    .line 369
    const/4 v1, 0x1

    return v1

    .line 367
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 372
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 419
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 420
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 421
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_16

    .line 422
    return v1

    .line 420
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 425
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 631
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 632
    return v1

    .line 634
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 635
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_1d

    .line 636
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    if-ne v3, p1, :cond_1a

    .line 637
    return v2

    .line 635
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 640
    .end local v2    # "i":I
    :cond_1d
    return v1
.end method

.method private findOnSwitchEventChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;

    .line 552
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 553
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 554
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;

    if-ne v2, p1, :cond_16

    .line 555
    return v1

    .line 553
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 558
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 1046
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1047
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1048
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_16

    .line 1049
    return v1

    .line 1047
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1052
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;

    .line 2136
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2137
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 2138
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;

    if-ne v2, p1, :cond_16

    .line 2139
    return v1

    .line 2137
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2142
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 2008
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    if-eqz v0, :cond_1b

    .line 2009
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2010
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 2011
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    if-ne v2, p1, :cond_18

    .line 2012
    return v1

    .line 2010
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2016
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Landroid/hardware/input/InputManagerGlobal;
    .registers 4

    .line 186
    const-class v0, Landroid/hardware/input/InputManagerGlobal;

    monitor-enter v0

    .line 187
    :try_start_3
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    if-nez v1, :cond_1a

    .line 188
    const-string v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 189
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 190
    new-instance v2, Landroid/hardware/input/InputManagerGlobal;

    invoke-static {v1}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v2, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 193
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 194
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private initializeLidStateListenerLocked()V
    .registers 4

    .line 1997
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener-IA;)V

    .line 1999
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerLidStateChangedListener(Landroid/hardware/input/ISemLidStateChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_16

    .line 2002
    nop

    .line 2003
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateChangedListener:Landroid/hardware/input/InputManagerGlobal$LidStateChangedListener;

    .line 2004
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    .line 2005
    return-void

    .line 2000
    :catch_16
    move-exception v1

    .line 2001
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private initializeMultiFingerGestureListenerLocked()V
    .registers 4

    .line 620
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener-IA;)V

    .line 622
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerMultiFingerGestureListener(Landroid/hardware/input/IMultiFingerGestureListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_16

    .line 625
    nop

    .line 626
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureListener:Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

    .line 627
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    .line 628
    return-void

    .line 623
    :catch_16
    move-exception v1

    .line 624
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private initializePointerIconChangedListenerLocked()V
    .registers 4

    .line 1882
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener-IA;)V

    .line 1884
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerPointerIconChangedListener(Landroid/hardware/input/IPointerIconChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_16

    .line 1887
    nop

    .line 1888
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconChangedListener:Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

    .line 1889
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    .line 1890
    return-void

    .line 1885
    :catch_16
    move-exception v1

    .line 1886
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private initializeSwitchEventChangedListenerLocked()V
    .registers 4

    .line 541
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener-IA;)V

    .line 543
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerSwitchEventChangedListener(Landroid/hardware/input/ISwitchEventChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_16

    .line 546
    nop

    .line 547
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedListener:Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

    .line 548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    .line 549
    return-void

    .line 544
    :catch_16
    move-exception v1

    .line 545
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private initializeTabletModeListenerLocked()V
    .registers 4

    .line 1036
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener-IA;)V

    .line 1038
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$TabletModeChangedListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 1041
    nop

    .line 1042
    return-void

    .line 1039
    :catch_d
    move-exception v1

    .line 1040
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private initializeWirelessKeyboardShareListenerLocked()V
    .registers 4

    .line 2124
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener-IA;)V

    .line 2127
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;
    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, v0}, Landroid/hardware/input/IInputManager;->registerWirelessKeyboardShareChangedListener(Landroid/hardware/input/IWirelessKeyboardShareChangedListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_f

    .line 2130
    nop

    .line 2131
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

    .line 2132
    return-void

    .line 2128
    :catch_f
    move-exception v1

    .line 2129
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method static synthetic lambda$unregisterKeyboardBacklightListener$0(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;)Z
    .registers 3
    .param p0, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    .param p1, "delegate"    # Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    .line 1339
    iget-object v0, p1, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private mappingToMousePointer(I)I
    .registers 3
    .param p1, "iconId"    # I

    .line 1957
    packed-switch p1, :pswitch_data_1c

    .line 1970
    :pswitch_3
    const/16 v0, 0x4e20

    if-le p1, v0, :cond_1b

    .line 1971
    add-int/lit16 v0, p1, -0x4e20

    add-int/lit16 v0, v0, 0x2774

    return v0

    .line 1968
    :pswitch_c
    const/16 v0, 0x278d

    return v0

    .line 1966
    :pswitch_f
    const/16 v0, 0x278c

    return v0

    .line 1964
    :pswitch_12
    const/16 v0, 0x278b

    return v0

    .line 1962
    :pswitch_15
    const/16 v0, 0x278a

    return v0

    .line 1960
    :pswitch_18
    const/16 v0, 0x2789

    return v0

    .line 1973
    :cond_1b
    return p1

    :pswitch_data_1c
    .packed-switch 0x4e21
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method

.method private onInputDevicesChanged([I)V
    .registers 12
    .param p1, "deviceIdAndGeneration"    # [I

    .line 294
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 295
    const-string v0, "InputManagerGlobal"

    const-string v1, "Received input devices changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_b
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 299
    :try_start_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "i":I
    :goto_14
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_4a

    .line 300
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 301
    .local v2, "deviceId":I
    invoke-static {p1, v2}, Landroid/hardware/input/InputManagerGlobal;->containsDeviceId([II)Z

    move-result v3

    if-nez v3, :cond_49

    .line 302
    sget-boolean v3, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v3, :cond_40

    .line 303
    const-string v3, "InputManagerGlobal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device removed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_40
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 306
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 309
    .end local v2    # "deviceId":I
    :cond_49
    goto :goto_14

    .line 311
    .end local v1    # "i":I
    :cond_4a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4b
    array-length v2, p1

    if-ge v1, v2, :cond_bb

    .line 312
    aget v2, p1, v1

    .line 313
    .restart local v2    # "deviceId":I
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 314
    .local v3, "index":I
    const/4 v4, 0x0

    if-ltz v3, :cond_93

    .line 315
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputDevice;

    .line 316
    .local v5, "device":Landroid/view/InputDevice;
    if-eqz v5, :cond_92

    .line 317
    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    .line 318
    .local v6, "generation":I
    invoke-virtual {v5}, Landroid/view/InputDevice;->getGeneration()I

    move-result v7

    if-eq v7, v6, :cond_92

    .line 319
    sget-boolean v7, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v7, :cond_89

    .line 320
    const-string v7, "InputManagerGlobal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_89
    iget-object v7, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v7, v3, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 323
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 327
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "generation":I
    :cond_92
    goto :goto_b8

    .line 328
    :cond_93
    sget-boolean v5, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v5, :cond_af

    .line 329
    const-string v5, "InputManagerGlobal"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_af
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2}, Landroid/hardware/input/InputManagerGlobal;->sendMessageToInputDeviceListenersLocked(II)V

    .line 311
    .end local v2    # "deviceId":I
    .end local v3    # "index":I
    :goto_b8
    add-int/lit8 v1, v1, 0x2

    goto :goto_4b

    .line 336
    .end local v1    # "i":I
    :cond_bb
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_e .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method private onLidStateChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 2020
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2021
    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received lid state changed: whenNanos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lidOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    :cond_26
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2025
    :try_start_29
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2026
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_40

    .line 2027
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    .line 2028
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    .line 2029
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;->sendLidStateChanged(JZ)V

    .line 2026
    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 2031
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_40
    monitor-exit v0

    .line 2032
    return-void

    .line 2031
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private onMultiFingerGesture(II)V
    .registers 8
    .param p1, "behavior"    # I
    .param p2, "reserved"    # I

    .line 645
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 646
    const-string v0, "InputManagerGlobal"

    const-string v1, "multi finger gesture."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_b
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 651
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2b

    .line 652
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    .line 653
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    .line 654
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;
    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 651
    nop

    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 657
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_2b
    monitor-exit v0

    .line 658
    return-void

    .line 657
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private onPointerIconChanged(ILandroid/view/PointerIcon;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "icon"    # Landroid/view/PointerIcon;

    .line 1979
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1980
    const-string v0, "InputManagerGlobal"

    const-string v1, "Received pointer icon changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_b
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1984
    :try_start_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1985
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_2c

    .line 1986
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    .line 1987
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1, v4, p2}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1985
    nop

    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1989
    .end local v2    # "i":I
    :cond_2c
    iput p1, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconType:I

    .line 1990
    iput-object p2, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIcon:Landroid/view/PointerIcon;

    .line 1991
    .end local v1    # "numListeners":I
    monitor-exit v0

    .line 1992
    return-void

    .line 1991
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_32

    throw v1
.end method

.method private onSwitchEventChanged(IIII)V
    .registers 9
    .param p1, "switchValues"    # I
    .param p2, "switchMask"    # I
    .param p3, "extraValues"    # I
    .param p4, "extraMask"    # I

    .line 563
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 564
    const-string v0, "InputManagerGlobal"

    const-string v1, "switch event change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_b
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 569
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_25

    .line 570
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    .line 571
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    .line 572
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->sendSwitchEventChanged(IIII)V

    .line 569
    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 574
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_25
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_27

    throw v1
.end method

.method private onTabletModeChanged(JZ)V
    .registers 8
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .line 948
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 949
    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received tablet mode changed: whenNanos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inTabletMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_26
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 953
    :try_start_29
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 954
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_40

    .line 955
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    .line 956
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    .line 957
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    .line 954
    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 959
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_40
    monitor-exit v0

    .line 960
    return-void

    .line 959
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private onWirelessKeyboardShareChanged(JILjava/lang/String;)V
    .registers 9
    .param p1, "whenNanos"    # J
    .param p3, "index"    # I
    .param p4, "contents"    # Ljava/lang/String;

    .line 2147
    sget-boolean v0, Landroid/hardware/input/InputManagerGlobal;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 2148
    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received wireless keyboard share changed: whenNanos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_30
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2153
    :try_start_33
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 2154
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v1, :cond_4a

    .line 2155
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    .line 2156
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    .line 2157
    .local v3, "listener":Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->sendWirelessKeyboardShareChanged(JILjava/lang/String;)V

    .line 2154
    .end local v3    # "listener":Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 2159
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_4a
    monitor-exit v0

    .line 2160
    return-void

    .line 2159
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_33 .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method private populateInputDevicesLocked()V
    .registers 7

    .line 260
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 262
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener-IA;)V

    .line 264
    .local v0, "listener":Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;
    :try_start_a
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v0}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_13

    .line 267
    nop

    .line 268
    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevicesChangedListener:Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;

    goto :goto_19

    .line 265
    :catch_13
    move-exception v1

    .line 266
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 271
    .end local v0    # "listener":Landroid/hardware/input/InputManagerGlobal$InputDevicesChangedListener;
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    if-nez v0, :cond_3f

    .line 274
    :try_start_1d
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I

    move-result-object v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_23} :catch_39

    .line 277
    .local v0, "ids":[I
    nop

    .line 279
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    .line 280
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_3f

    aget v4, v0, v3

    .line 281
    .local v4, "id":I
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    .end local v4    # "id":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 275
    .end local v0    # "ids":[I
    :catch_39
    move-exception v0

    .line 276
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 284
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_3f
    return-void
.end method

.method public static resetInstance(Landroid/hardware/input/IInputManager;)Landroid/hardware/input/InputManagerGlobal;
    .registers 3
    .param p0, "inputManagerService"    # Landroid/hardware/input/IInputManager;

    .line 207
    const-class v0, Landroid/hardware/input/InputManager;

    monitor-enter v0

    .line 208
    :try_start_3
    new-instance v1, Landroid/hardware/input/InputManagerGlobal;

    invoke-direct {v1, p0}, Landroid/hardware/input/InputManagerGlobal;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManagerGlobal;->sInstance:Landroid/hardware/input/InputManagerGlobal;

    .line 209
    monitor-exit v0

    return-object v1

    .line 210
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .line 377
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 379
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    .line 380
    .local v2, "listener":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v2    # "listener":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 382
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public addInputDeviceBatteryListener(ILjava/util/concurrent/Executor;Landroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 12
    .param p1, "deviceId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 1081
    const-string v0, "executor should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1082
    const-string v0, "listener should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1084
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 1086
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    .line 1087
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$LocalInputDeviceBatteryListener-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 1089
    :cond_20
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 1090
    .local v1, "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    if-nez v1, :cond_43

    .line 1093
    new-instance v3, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    invoke-direct {v3, v2}, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;-><init>(Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners-IA;)V

    move-object v1, v3

    .line 1094
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_8d

    .line 1096
    :try_start_35
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v2, p1, v3}, Landroid/hardware/input/IInputManager;->registerBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3c} :catch_3d
    .catchall {:try_start_35 .. :try_end_3c} :catchall_8d

    .line 1099
    goto :goto_78

    .line 1097
    :catch_3d
    move-exception v2

    .line 1098
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3e
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    throw v3

    .line 1103
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :cond_43
    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1104
    .local v2, "numDelegates":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4a
    if-ge v3, v2, :cond_78

    .line 1105
    iget-object v4, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    .line 1106
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v4, v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 1107
    .local v4, "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 1104
    .end local v4    # "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 1108
    .restart local v4    # "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :cond_5f
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempting to register an InputDeviceBatteryListener that has already been registered for deviceId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    throw v5

    .line 1115
    .end local v2    # "numDelegates":I
    .end local v3    # "i":I
    .end local v4    # "registeredListener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :cond_78
    :goto_78
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    invoke-direct {v2, p3, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceBatteryListener;Ljava/util/concurrent/Executor;)V

    .line 1117
    .local v2, "delegate":Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;
    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    if-eqz v3, :cond_8b

    .line 1121
    iget-object v3, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mInputDeviceBatteryState:Landroid/hardware/input/IInputDeviceBatteryState;

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->notifyBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V

    .line 1123
    .end local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "delegate":Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;
    :cond_8b
    monitor-exit v0

    .line 1124
    return-void

    .line 1123
    :catchall_8d
    move-exception v1

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3e .. :try_end_8f} :catchall_8d

    throw v1
.end method

.method public addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputPort"    # Ljava/lang/String;
    .param p2, "displayUniqueId"    # Ljava/lang/String;

    .line 1821
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->addUniqueIdAssociation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1824
    nop

    .line 1825
    return-void

    .line 1822
    :catch_7
    move-exception v0

    .line 1823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public cancelCurrentTouch()V
    .registers 3

    .line 1856
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->cancelCurrentTouch()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1859
    nop

    .line 1860
    return-void

    .line 1857
    :catch_7
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method cancelVibrate(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1595
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1598
    nop

    .line 1599
    return-void

    .line 1596
    :catch_7
    move-exception v0

    .line 1597
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method closeLightSession(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1535
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->closeLightSession(ILandroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1538
    nop

    .line 1539
    return-void

    .line 1536
    :catch_7
    move-exception v0

    .line 1537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deviceHasKeys(I[I)[Z
    .registers 6
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .line 1645
    array-length v0, p2

    new-array v0, v0, [Z

    .line 1647
    .local v0, "ret":[Z
    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    .line 1650
    nop

    .line 1651
    return-object v0

    .line 1648
    :catch_c
    move-exception v1

    .line 1649
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public deviceHasKeys([I)[Z
    .registers 3
    .param p1, "keyCodes"    # [I

    .line 1638
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public disableInputDevice(I)V
    .registers 5
    .param p1, "id"    # I

    .line 876
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->disableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 880
    nop

    .line 881
    return-void

    .line 877
    :catch_7
    move-exception v0

    .line 878
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not disable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method disableSensor(II)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 1424
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->disableSensor(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1427
    nop

    .line 1428
    return-void

    .line 1425
    :catch_7
    move-exception v0

    .line 1426
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableInputDevice(I)V
    .registers 5
    .param p1, "id"    # I

    .line 864
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->enableInputDevice(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 868
    nop

    .line 869
    return-void

    .line 865
    :catch_7
    move-exception v0

    .line 866
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not enable input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method enableSensor(IIII)Z
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I
    .param p3, "samplingPeriodUs"    # I
    .param p4, "maxBatchReportLatencyUs"    # I

    .line 1412
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager;->enableSensor(IIII)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1414
    :catch_7
    move-exception v0

    .line 1415
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method final findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    .line 1893
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1894
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 1895
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    if-ne v2, p1, :cond_16

    .line 1896
    return v1

    .line 1894
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1899
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method flushSensor(II)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "sensorType"    # I

    .line 1435
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->flushSensor(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1436
    :catch_7
    move-exception v0

    .line 1437
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getHostUsiVersion(Landroid/view/Display;)Landroid/hardware/input/HostUsiVersion;
    .registers 7
    .param p1, "display"    # Landroid/view/Display;

    .line 920
    const-string v0, "display should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 924
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 925
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 927
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 928
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 929
    .local v2, "device":Landroid/view/InputDevice;
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/view/InputDevice;->getAssociatedDisplayId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_36

    .line 930
    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 931
    invoke-virtual {v2}, Landroid/view/InputDevice;->getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 927
    .end local v2    # "device":Landroid/view/InputDevice;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 935
    .end local v1    # "i":I
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_4b

    .line 941
    :try_start_3a
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/input/IInputManager;->getHostUsiVersionFromDisplayConfig(I)Landroid/hardware/input/HostUsiVersion;

    move-result-object v0
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_44} :catch_45

    return-object v0

    .line 942
    :catch_45
    move-exception v0

    .line 943
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 935
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .registers 7
    .param p1, "id"    # I

    .line 235
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 238
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 239
    .local v1, "index":I
    if-gez v1, :cond_11

    .line 240
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 243
    :cond_11
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_33

    .line 244
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_31

    .line 246
    :try_start_1b
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v3
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_21} :catch_2b
    .catchall {:try_start_1b .. :try_end_21} :catchall_33

    move-object v2, v3

    .line 249
    nop

    .line 250
    if-eqz v2, :cond_31

    .line 251
    :try_start_25
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_31

    .line 247
    :catch_2b
    move-exception v3

    .line 248
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "id":I
    throw v4

    .line 254
    .end local v3    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "id":I
    :cond_31
    :goto_31
    monitor-exit v0

    return-object v2

    .line 255
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getInputDeviceBatteryState(IZ)Landroid/hardware/BatteryState;
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "hasBattery"    # Z

    .line 1194
    if-nez p2, :cond_8

    .line 1195
    new-instance v0, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    invoke-direct {v0}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>()V

    return-object v0

    .line 1198
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getBatteryState(I)Landroid/hardware/input/IInputDeviceBatteryState;

    move-result-object v0

    .line 1199
    .local v0, "state":Landroid/hardware/input/IInputDeviceBatteryState;
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;

    iget-boolean v2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v3, v0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget v4, v0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    invoke-direct {v1, v2, v3, v4}, Landroid/hardware/input/InputManagerGlobal$LocalBatteryState;-><init>(ZIF)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    return-object v1

    .line 1200
    .end local v0    # "state":Landroid/hardware/input/IInputDeviceBatteryState;
    :catch_1a
    move-exception v0

    .line 1201
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputDeviceBluetoothAddress(I)Ljava/lang/String;
    .registers 4
    .param p1, "deviceId"    # I

    .line 1845
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getInputDeviceBluetoothAddress(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1846
    :catch_7
    move-exception v0

    .line 1847
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .registers 9
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 887
    const-string v0, "descriptor must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 889
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 890
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 892
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 893
    .local v1, "numDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_4a

    .line 894
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice;

    .line 895
    .local v3, "inputDevice":Landroid/view/InputDevice;
    if-nez v3, :cond_3b

    .line 896
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_4d

    .line 898
    .local v4, "id":I
    :try_start_24
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5, v4}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2a} :catch_35
    .catchall {:try_start_24 .. :try_end_2a} :catchall_4d

    move-object v3, v5

    .line 901
    nop

    .line 902
    if-nez v3, :cond_2f

    .line 903
    goto :goto_47

    .line 905
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_3b

    .line 899
    :catch_35
    move-exception v5

    .line 900
    .local v5, "ex":Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "descriptor":Ljava/lang/String;
    throw v6

    .line 907
    .end local v4    # "id":I
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "descriptor":Ljava/lang/String;
    :cond_3b
    :goto_3b
    invoke-virtual {v3}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 908
    monitor-exit v0

    return-object v3

    .line 893
    .end local v3    # "inputDevice":Landroid/view/InputDevice;
    :cond_47
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 911
    .end local v2    # "i":I
    :cond_4a
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 912
    .end local v1    # "numDevices":I
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public getInputDeviceIds()[I
    .registers 6

    .line 835
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 836
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 838
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 839
    .local v1, "count":I
    new-array v2, v1, [I

    .line 840
    .local v2, "ids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v1, :cond_1c

    .line 841
    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 843
    .end local v3    # "i":I
    :cond_1c
    monitor-exit v0

    return-object v2

    .line 844
    .end local v1    # "count":I
    .end local v2    # "ids":[I
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getInputDeviceLightsManager(I)Landroid/hardware/lights/LightsManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1468
    new-instance v0, Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputDeviceLightsManager;-><init>(I)V

    return-object v0
.end method

.method public getInputDeviceSensorManager(I)Landroid/hardware/SensorManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1389
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    if-nez v0, :cond_b

    .line 1390
    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {v0, p0}, Landroid/hardware/input/InputDeviceSensorManager;-><init>(Landroid/hardware/input/InputManagerGlobal;)V

    iput-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    .line 1392
    :cond_b
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceSensorManager:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorManager(I)Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceVibrator(II)Landroid/os/Vibrator;
    .registers 4
    .param p1, "deviceId"    # I
    .param p2, "vibratorId"    # I

    .line 1545
    new-instance v0, Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputDeviceVibrator;-><init>(II)V

    return-object v0
.end method

.method public getInputDeviceVibratorManager(I)Landroid/os/VibratorManager;
    .registers 3
    .param p1, "deviceId"    # I

    .line 1553
    new-instance v0, Landroid/hardware/input/InputDeviceVibratorManager;

    invoke-direct {v0, p1}, Landroid/hardware/input/InputDeviceVibratorManager;-><init>(I)V

    return-object v0
.end method

.method public getInputManagerService()Landroid/hardware/input/IInputManager;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method public getKeyCodeForKeyLocation(II)I
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "locationKeyCode"    # I

    .line 1659
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->getKeyCodeForKeyLocation(II)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1660
    :catch_7
    move-exception v0

    .line 1661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;
    .registers 4
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .line 1359
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1360
    :catch_7
    move-exception v0

    .line 1361
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "light"    # Landroid/hardware/lights/Light;

    .line 1489
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p2}, Landroid/hardware/lights/Light;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/input/IInputManager;->getLightState(II)Landroid/hardware/lights/LightState;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 1490
    :catch_b
    move-exception v0

    .line 1491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getLights(I)Ljava/util/List;
    .registers 4
    .param p1, "deviceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .line 1477
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getLights(I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1478
    :catch_7
    move-exception v0

    .line 1479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method getSensorList(I)[Landroid/hardware/input/InputSensorInfo;
    .registers 4
    .param p1, "deviceId"    # I

    .line 1400
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1401
    :catch_7
    move-exception v0

    .line 1402
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getVelocityTrackerStrategy()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mVelocityTrackerStrategy:Ljava/lang/String;

    return-object v0
.end method

.method getVibratorIds(I)[I
    .registers 4
    .param p1, "deviceId"    # I

    .line 1562
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->getVibratorIds(I)[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1563
    :catch_7
    move-exception v0

    .line 1564
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 1689
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;II)Z
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I
    .param p3, "targetUid"    # I

    .line 1670
    const-string v0, "event must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1672
    if-eqz p2, :cond_16

    const/4 v0, 0x2

    if-eq p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    goto :goto_16

    .line 1675
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mode is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1679
    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->injectInputEventToTarget(Landroid/view/InputEvent;II)Z

    move-result v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return v0

    .line 1680
    :catch_1d
    move-exception v0

    .line 1681
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isInputDeviceEnabled(I)Z
    .registers 5
    .param p1, "id"    # I

    .line 852
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isInputDeviceEnabled(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 853
    :catch_7
    move-exception v0

    .line 854
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not check enabled status of input device with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputManagerGlobal"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method isVibrating(I)Z
    .registers 4
    .param p1, "deviceId"    # I

    .line 1606
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->isVibrating(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1607
    :catch_7
    move-exception v0

    .line 1608
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 1793
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/input/IInputManager;->monitorGestureInput(Landroid/os/IBinder;Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1794
    :catch_c
    move-exception v0

    .line 1795
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "filter"    # I

    .line 1802
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->monitorGestureInputFiltered(Landroid/os/IBinder;Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 1803
    :catch_c
    move-exception v0

    .line 1804
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public monitorInput(Ljava/lang/String;II)Landroid/view/InputChannel;
    .registers 6
    .param p1, "inputChannelName"    # Ljava/lang/String;
    .param p2, "displayId"    # I
    .param p3, "filter"    # I

    .line 1810
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->monitorInputForBinder(Ljava/lang/String;II)Landroid/view/InputChannel;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1811
    :catch_7
    move-exception v0

    .line 1812
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyQuickAccess(IFF)V
    .registers 6
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->notifyQuickAccess(IFF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 486
    nop

    .line 488
    return-void

    .line 484
    :catch_7
    move-exception v0

    .line 485
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1523
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1526
    nop

    .line 1527
    return-void

    .line 1524
    :catch_7
    move-exception v0

    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public pilferPointers(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "inputChannelToken"    # Landroid/os/IBinder;

    .line 1868
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->pilferPointers(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1871
    nop

    .line 1872
    return-void

    .line 1869
    :catch_7
    move-exception v0

    .line 1870
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 388
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 391
    :try_start_8
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->populateInputDevicesLocked()V

    .line 392
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 393
    .local v1, "index":I
    if-gez v1, :cond_1b

    .line 394
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v1    # "index":I
    :cond_1b
    monitor-exit v0

    .line 397
    return-void

    .line 396
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method registerKeyboardBacklightListener(Ljava/util/concurrent/Executor;Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 8
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1301
    const-string v0, "executor should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1302
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1304
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1305
    :try_start_d
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    if-nez v1, :cond_2c

    .line 1306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    .line 1307
    new-instance v1, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener;-><init>(Landroid/hardware/input/InputManagerGlobal;Landroid/hardware/input/InputManagerGlobal$LocalKeyboardBacklightListener-IA;)V

    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_59

    .line 1310
    :try_start_20
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26
    .catchall {:try_start_20 .. :try_end_25} :catchall_59

    .line 1313
    goto :goto_2c

    .line 1311
    :catch_26
    move-exception v1

    .line 1312
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_27
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    throw v2

    .line 1315
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    :cond_2c
    :goto_2c
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1316
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_4c

    .line 1317
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    iget-object v3, v3, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;->mListener:Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    if-eq v3, p2, :cond_44

    .line 1316
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1318
    :cond_44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Listener has already been registered!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    throw v3

    .line 1321
    .end local v2    # "i":I
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    :cond_4c
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;

    invoke-direct {v2, p2, p1}, Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;Ljava/util/concurrent/Executor;)V

    .line 1323
    .local v2, "delegate":Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    nop

    .end local v1    # "numListeners":I
    .end local v2    # "delegate":Landroid/hardware/input/InputManagerGlobal$KeyboardBacklightListenerDelegate;
    monitor-exit v0

    .line 1325
    return-void

    .line 1324
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_27 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1004
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1007
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    .line 1008
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeTabletModeListenerLocked()V

    .line 1010
    :cond_f
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 1011
    .local v1, "idx":I
    if-gez v1, :cond_1f

    .line 1012
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 1014
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    :cond_1f
    monitor-exit v0

    .line 1017
    return-void

    .line 1016
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2086
    if-eqz p1, :cond_21

    .line 2089
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2090
    :try_start_5
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManagerGlobal$WirelessKeyboardShareChangedListener;

    if-nez v1, :cond_c

    .line 2091
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeWirelessKeyboardShareListenerLocked()V

    .line 2093
    :cond_c
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)I

    move-result v1

    .line 2094
    .local v1, "idx":I
    if-gez v1, :cond_1c

    .line 2095
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    .line 2097
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 2100
    return-void

    .line 2099
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 2087
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 1446
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1447
    :catch_7
    move-exception v0

    .line 1448
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 1617
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1618
    :catch_7
    move-exception v0

    .line 1619
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method removeInputDeviceBatteryListener(ILandroid/hardware/input/InputManager$InputDeviceBatteryListener;)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    .line 1131
    const-string v0, "listener should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1133
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    if-nez v1, :cond_e

    .line 1135
    monitor-exit v0

    return-void

    .line 1137
    :cond_e
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;

    .line 1138
    .local v1, "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    if-nez v1, :cond_18

    .line 1140
    monitor-exit v0

    return-void

    .line 1142
    :cond_18
    iget-object v2, v1, Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;->mDelegates:Ljava/util/List;

    .line 1144
    .local v2, "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 1145
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;

    iget-object v4, v4, Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceBatteryListener;

    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1146
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1147
    goto :goto_1b

    .line 1149
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1151
    .end local v3    # "i":I
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1152
    monitor-exit v0

    return-void

    .line 1156
    :cond_3e
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_60

    .line 1158
    :try_start_43
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v4, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v3, p1, v4}, Landroid/hardware/input/IInputManager;->unregisterBatteryListener(ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_4a} :catch_5a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_60

    .line 1161
    nop

    .line 1162
    :try_start_4b
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_58

    .line 1165
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mBatteryListeners:Landroid/util/SparseArray;

    .line 1166
    iput-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceBatteryListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 1168
    .end local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    :cond_58
    monitor-exit v0

    .line 1169
    return-void

    .line 1159
    .restart local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .restart local v2    # "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    :catch_5a
    move-exception v3

    .line 1160
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "deviceId":I
    .end local p2    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    throw v4

    .line 1168
    .end local v1    # "listenersForDevice":Landroid/hardware/input/InputManagerGlobal$RegisteredBatteryListeners;
    .end local v2    # "delegates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/input/InputManagerGlobal$InputDeviceBatteryListenerDelegate;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "deviceId":I
    .restart local p2    # "listener":Landroid/hardware/input/InputManager$InputDeviceBatteryListener;
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_4b .. :try_end_62} :catchall_60

    throw v1
.end method

.method public removeUniqueIdAssociation(Ljava/lang/String;)V
    .registers 4
    .param p1, "inputPort"    # Ljava/lang/String;

    .line 1832
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->removeUniqueIdAssociation(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1835
    nop

    .line 1836
    return-void

    .line 1833
    :catch_7
    move-exception v0

    .line 1834
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "request"    # Landroid/hardware/lights/LightsRequest;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1502
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLights()Ljava/util/List;

    move-result-object v0

    .line 1503
    .local v0, "lightIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1504
    .local v1, "lightIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_1d

    .line 1505
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 1504
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1507
    .end local v2    # "i":I
    :cond_1d
    invoke-virtual {p2}, Landroid/hardware/lights/LightsRequest;->getLightStates()Ljava/util/List;

    move-result-object v2

    .line 1508
    .local v2, "lightStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/hardware/lights/LightState;

    .line 1509
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/lights/LightState;

    .line 1508
    invoke-interface {v3, p1, v1, v4, p3}, Landroid/hardware/input/IInputManager;->setLightStates(I[I[Landroid/hardware/lights/LightState;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_31

    .line 1513
    .end local v0    # "lightIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "lightIds":[I
    .end local v2    # "lightStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/LightState;>;"
    nop

    .line 1514
    return-void

    .line 1511
    :catch_31
    move-exception v0

    .line 1512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestPointerCapture(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .line 1782
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1785
    nop

    .line 1786
    return-void

    .line 1783
    :catch_7
    move-exception v0

    .line 1784
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semGetLidState()I
    .registers 3

    .line 719
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getLidState()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 720
    :catch_7
    move-exception v0

    .line 721
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semRegisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 737
    if-eqz p1, :cond_21

    .line 741
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_5
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    if-nez v1, :cond_c

    .line 743
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeLidStateListenerLocked()V

    .line 745
    :cond_c
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I

    move-result v1

    .line 746
    .local v1, "idx":I
    if-gez v1, :cond_1c

    .line 747
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    invoke-direct {v2, p1, p2}, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;Landroid/os/Handler;)V

    .line 749
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 753
    return-void

    .line 751
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 738
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 437
    if-eqz p1, :cond_21

    .line 441
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_5
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureListener:Landroid/hardware/input/InputManagerGlobal$MultiFingerGestureListener;

    if-nez v1, :cond_c

    .line 443
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeMultiFingerGestureListenerLocked()V

    .line 445
    :cond_c
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I

    move-result v1

    .line 446
    .local v1, "index":I
    if-gez v1, :cond_1c

    .line 447
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    new-instance v3, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v1    # "index":I
    :cond_1c
    monitor-exit v0

    .line 452
    return-void

    .line 450
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 438
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semRegisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 791
    if-eqz p1, :cond_21

    .line 795
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_5
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconChangedListener:Landroid/hardware/input/InputManagerGlobal$PointerIconChangedListener;

    if-nez v1, :cond_c

    .line 797
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializePointerIconChangedListenerLocked()V

    .line 799
    :cond_c
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result v1

    .line 800
    .local v1, "index":I
    if-gez v1, :cond_1c

    .line 801
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    new-instance v3, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v1    # "index":I
    :cond_1c
    monitor-exit v0

    .line 804
    return-void

    .line 803
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 792
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semRegisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 498
    if-eqz p1, :cond_21

    .line 502
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 503
    :try_start_5
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedListener:Landroid/hardware/input/InputManagerGlobal$SwitchEventChangedListener;

    if-nez v1, :cond_c

    .line 504
    invoke-direct {p0}, Landroid/hardware/input/InputManagerGlobal;->initializeSwitchEventChangedListenerLocked()V

    .line 506
    :cond_c
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnSwitchEventChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)I

    move-result v1

    .line 507
    .local v1, "index":I
    if-gez v1, :cond_1c

    .line 508
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    new-instance v3, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v1    # "index":I
    :cond_1c
    monitor-exit v0

    .line 513
    return-void

    .line 511
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 499
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semSetWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keyCodes"    # Ljava/lang/String;

    .line 702
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 704
    goto :goto_7

    .line 703
    :catch_6
    move-exception v0

    .line 706
    :goto_7
    return-void
.end method

.method public semUnregisterOnLidStateChangedListener(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;

    .line 764
    if-eqz p1, :cond_1c

    .line 768
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mLidStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findSemOnLidStateChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnLidStateChangedListener;)I

    move-result v1

    .line 770
    .local v1, "idx":I
    if-ltz v1, :cond_17

    .line 771
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mSemOnLidStateChangedListeners:Ljava/util/List;

    .line 772
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;

    .line 773
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 775
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$SemOnLidStateChangedListenerDelegate;
    :cond_17
    monitor-exit v0

    .line 777
    return-void

    .line 775
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1

    .line 765
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    .line 461
    if-eqz p1, :cond_21

    .line 465
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mMultiFingerGestureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnMultiFingerGestureListenerLocked(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)I

    move-result v1

    .line 467
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 468
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    .line 469
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;

    .line 470
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 471
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnMultiFingerGestureListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 473
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnMultiFingerGestureListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 475
    return-void

    .line 473
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 462
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semUnregisterOnPointerIconChangedListener(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    .line 816
    if-eqz p1, :cond_21

    .line 820
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mPointerIconLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnPointerIconChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;)I

    move-result v1

    .line 822
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 823
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;

    .line 824
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 825
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnPointerIconChangedListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 827
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 828
    return-void

    .line 827
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 817
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semUnregisterOnSwitchEventChangedListener(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;

    .line 522
    if-eqz p1, :cond_21

    .line 526
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mSwitchEventChangedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnSwitchEventChangedListenerLocked(Landroid/hardware/input/InputManager$SemOnSwitchEventChangedListener;)I

    move-result v1

    .line 528
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 529
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    .line 530
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;

    .line 531
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 532
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mOnSwitchEventChangedListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 534
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnSwitchEventChangedListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 536
    return-void

    .line 534
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 523
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .line 1373
    const-string v0, "identifier must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1374
    const-string v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1377
    :try_start_a
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    .line 1381
    nop

    .line 1382
    return-void

    .line 1379
    :catch_11
    move-exception v0

    .line 1380
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCustomPointerIcon(Landroid/view/PointerIcon;)V
    .registers 5
    .param p1, "icon"    # Landroid/view/PointerIcon;

    .line 1754
    :try_start_0
    invoke-virtual {p1}, Landroid/view/PointerIcon;->getType()I

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_4c

    const-string v1, "InputManagerGlobal"

    sparse-switch v0, :sswitch_data_52

    goto :goto_4a

    .line 1763
    :sswitch_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomPointerIcon SPEN CUSTOM, callingPid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1764
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1763
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setCustomHoverIcon(Landroid/view/PointerIcon;)V

    goto :goto_4a

    .line 1757
    :sswitch_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomPointerIcon MOUSE CUSTOM, callingPid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1757
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_49} :catch_4c

    .line 1760
    nop

    .line 1774
    :goto_4a
    nop

    .line 1775
    return-void

    .line 1772
    :catch_4c
    move-exception v0

    .line 1773
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :sswitch_data_52
    .sparse-switch
        -0x1 -> :sswitch_2a
        0x2774 -> :sswitch_2a
        0x4e20 -> :sswitch_a
        0x4e36 -> :sswitch_a
    .end sparse-switch
.end method

.method public setDisplayIdForPointerIcon(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 1939
    :try_start_0
    const-string v0, "InputManagerGlobal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayIdForPointerIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setDisplayIdForPointerIcon(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 1942
    goto :goto_1f

    .line 1941
    :catch_1e
    move-exception v0

    .line 1943
    :goto_1f
    return-void
.end method

.method public setIsStylusFromTouchpad(Z)V
    .registers 3
    .param p1, "isStylusFromTouchpad"    # Z

    .line 1951
    iget-boolean v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIsStylusFromTouchpad:Z

    if-eq v0, p1, :cond_6

    .line 1952
    iput-boolean p1, p0, Landroid/hardware/input/InputManagerGlobal;->mIsStylusFromTouchpad:Z

    .line 1954
    :cond_6
    return-void
.end method

.method public setPointerIconType(I)V
    .registers 9
    .param p1, "iconId"    # I

    .line 1697
    iget-boolean v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIsStylusFromTouchpad:Z

    const-string v1, "InputManagerGlobal"

    if-eqz v0, :cond_35

    const/16 v0, 0x4e20

    if-le p1, v0, :cond_35

    .line 1698
    move v0, p1

    .line 1699
    .local v0, "before":I
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->mappingToMousePointer(I)I

    move-result p1

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapping pointerIcon because of mIsStylusFromTouchpad ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    .end local v0    # "before":I
    :cond_35
    :try_start_35
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->isDefaultPointerIconChanged()Z

    move-result v0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3b} :catch_db

    const-string v2, ", callingPid = "

    const-string v3, "setPointerIconType iconId = "

    if-eqz v0, :cond_b4

    .line 1705
    :try_start_41
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getDefaultPointerIcon()Landroid/view/PointerIcon;

    move-result-object v0

    .line 1706
    .local v0, "defaultIcon":Landroid/view/PointerIcon;
    if-eqz v0, :cond_b3

    .line 1707
    invoke-virtual {v0}, Landroid/view/PointerIcon;->getType()I

    move-result v4

    .line 1708
    .local v4, "defaultIconType":I
    iget-object v5, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v5}, Landroid/hardware/input/IInputManager;->getToolTypeForDefaultPointerIcon()I

    move-result v5

    .line 1709
    .local v5, "defaultIconToolType":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", defaultIconType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", defaultIconToolType = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1712
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1709
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/16 v1, 0x4e21

    packed-switch v5, :pswitch_data_e2

    .line 1731
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    goto :goto_b0

    .line 1715
    :pswitch_8f
    if-ge p1, v1, :cond_97

    .line 1716
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    goto :goto_b3

    .line 1718
    :cond_97
    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManagerGlobal;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 1720
    goto :goto_b3

    .line 1722
    :pswitch_9b
    if-gt p1, v1, :cond_aa

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_aa

    const/16 v1, 0x2789

    if-ne p1, v1, :cond_a6

    goto :goto_aa

    .line 1727
    :cond_a6
    invoke-virtual {p0, v0}, Landroid/hardware/input/InputManagerGlobal;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 1729
    goto :goto_b3

    .line 1725
    :cond_aa
    :goto_aa
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    goto :goto_b3

    .line 1731
    :goto_b0
    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V

    .line 1734
    .end local v0    # "defaultIcon":Landroid/view/PointerIcon;
    .end local v4    # "defaultIconType":I
    .end local v5    # "defaultIconToolType":I
    :cond_b3
    :goto_b3
    goto :goto_d9

    .line 1735
    :cond_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1736
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1735
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setPointerIconType(I)V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_d9} :catch_db

    .line 1744
    :goto_d9
    nop

    .line 1745
    return-void

    .line 1742
    :catch_db
    move-exception v0

    .line 1743
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    nop

    :pswitch_data_e2
    .packed-switch 0x2
        :pswitch_9b
        :pswitch_8f
    .end packed-switch
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 403
    if-eqz p1, :cond_21

    .line 407
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 408
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 409
    .local v1, "index":I
    if-ltz v1, :cond_1c

    .line 410
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;

    .line 411
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 412
    iget-object v3, p0, Landroid/hardware/input/InputManagerGlobal;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 414
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$InputDeviceListenerDelegate;
    :cond_1c
    monitor-exit v0

    .line 415
    return-void

    .line 414
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1

    .line 404
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unregisterKeyboardBacklightListener(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/hardware/input/InputManager$KeyboardBacklightListener;

    .line 1333
    const-string v0, "listener should not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1335
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_8
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 1337
    monitor-exit v0

    return-void

    .line 1339
    :cond_e
    new-instance v2, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/hardware/input/InputManagerGlobal$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputManager$KeyboardBacklightListener;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1340
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_34

    if-eqz v1, :cond_32

    .line 1342
    :try_start_1e
    iget-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->unregisterKeyboardBacklightListener(Landroid/hardware/input/IKeyboardBacklightListener;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_2c
    .catchall {:try_start_1e .. :try_end_25} :catchall_34

    .line 1345
    nop

    .line 1346
    const/4 v1, 0x0

    :try_start_27
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListeners:Ljava/util/ArrayList;

    .line 1347
    iput-object v1, p0, Landroid/hardware/input/InputManagerGlobal;->mKeyboardBacklightListener:Landroid/hardware/input/IKeyboardBacklightListener;

    goto :goto_32

    .line 1343
    :catch_2c
    move-exception v1

    .line 1344
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .end local p1    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    throw v2

    .line 1349
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/input/InputManagerGlobal;
    .restart local p1    # "listener":Landroid/hardware/input/InputManager$KeyboardBacklightListener;
    :cond_32
    :goto_32
    monitor-exit v0

    .line 1350
    return-void

    .line 1349
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v1
.end method

.method unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 1023
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1025
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1026
    :try_start_8
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 1027
    .local v1, "idx":I
    if-ltz v1, :cond_1a

    .line 1028
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnTabletModeChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;

    .line 1029
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1031
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnTabletModeChangedListenerDelegate;
    :cond_1a
    monitor-exit v0

    .line 1032
    return-void

    .line 1031
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public unregisterOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;

    .line 2110
    if-eqz p1, :cond_1c

    .line 2113
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mWirelessKeyboardShareLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2114
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManagerGlobal;->findOnWirelessKeyboardShareChangedListenerLocked(Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListener;)I

    move-result v1

    .line 2115
    .local v1, "idx":I
    if-ltz v1, :cond_17

    .line 2116
    iget-object v2, p0, Landroid/hardware/input/InputManagerGlobal;->mOnWirelessKeyboardShareChangedListeners:Ljava/util/List;

    .line 2117
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;

    .line 2118
    .local v2, "d":Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2120
    .end local v1    # "idx":I
    .end local v2    # "d":Landroid/hardware/input/InputManagerGlobal$OnWirelessKeyboardShareChangedListenerDelegate;
    :cond_17
    monitor-exit v0

    .line 2121
    return-void

    .line 2120
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1

    .line 2111
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/hardware/input/IInputSensorEventListener;

    .line 1457
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1460
    nop

    .line 1461
    return-void

    .line 1458
    :catch_7
    move-exception v0

    .line 1459
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "listener"    # Landroid/os/IVibratorStateListener;

    .line 1628
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1629
    :catch_7
    move-exception v0

    .line 1630
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/CombinedVibration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1584
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrateCombined(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1587
    nop

    .line 1588
    return-void

    .line 1585
    :catch_7
    move-exception v0

    .line 1586
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 1573
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManagerGlobal;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1576
    nop

    .line 1577
    return-void

    .line 1574
    :catch_7
    move-exception v0

    .line 1575
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
