.class public final Landroid/hardware/display/DisplayManagerGlobal;
.super Ljava/lang/Object;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;,
        Landroid/hardware/display/DisplayManagerGlobal$DisplayEvent;
    }
.end annotation


# static fields
.field public static final CACHE_KEY_DISPLAY_INFO_PROPERTY:Ljava/lang/String; = "cache_key.display_info"

.field private static final DEBUG:Z = false

.field public static final EVENT_CONNECTIONSTATUS_CHANGED:I = 0x6

.field public static final EVENT_DISPLAY_ADDED:I = 0x1

.field public static final EVENT_DISPLAY_BRIGHTNESS_CHANGED:I = 0x4

.field public static final EVENT_DISPLAY_CHANGED:I = 0x2

.field public static final EVENT_DISPLAY_HDR_SDR_RATIO_CHANGED:I = 0x5

.field public static final EVENT_DISPLAY_REMOVED:I = 0x3

.field public static final EVENT_REMOTE_DISPLAY_ROTATION_CHANGED:I = 0x8

.field public static final EVENT_REMOTE_DISPLAY_STATE_CHANGED:I = 0x7

.field public static final EVENT_VOLUME_KEY_DOWN:I = 0xa

.field public static final EVENT_VOLUME_KEY_UP:I = 0xb

.field public static final EVENT_VOLUME_LEVEL_CHANGED:I = 0x9

.field public static final EVENT_VOLUME_MUTE:I = 0xc

.field public static final EVENT_VOLUME_UNMUTE:I = 0xd

.field public static final EVENT_WIFIDISPLAY_PARAMETERS_CHANGED:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DisplayManager"

.field private static final USE_CACHE:Z

.field private static sInstance:Landroid/hardware/display/DisplayManagerGlobal;


# instance fields
.field private mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

.field private final mDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mDispatchNativeCallbacks:Z

.field private mDisplayCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayIdCache:[I

.field private final mDisplayInfoCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayVolumeKeyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDm:Landroid/hardware/display/IDisplayManager;

.field private final mLock:Ljava/lang/Object;

.field private mNativeCallbackReportedRefreshRate:F

.field private final mOverlayProperties:Landroid/hardware/OverlayProperties;

.field private mRegisteredEventsMask:J

.field private final mWideColorSpace:Landroid/graphics/ColorSpace;

.field private mWifiDisplayConnectionCallback:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

.field private final mWifiDisplayParameterListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiDisplayScanNestCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDm(Landroid/hardware/display/DisplayManagerGlobal;)Landroid/hardware/display/IDisplayManager;
    .registers 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleDeviceEvent(Landroid/hardware/display/DisplayManagerGlobal;Landroid/os/Bundle;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDeviceEvent(Landroid/os/Bundle;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayEvent(Landroid/hardware/display/DisplayManagerGlobal;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayEvent(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayVolumeEvent(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDisplayVolumeKeyEvent(Landroid/hardware/display/DisplayManagerGlobal;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->handleDisplayVolumeKeyEvent(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWifiDisplayParameterEvent(Landroid/hardware/display/DisplayManagerGlobal;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->handleWifiDisplayParameterEvent(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/IDisplayManager;)V
    .registers 5
    .param p1, "dm"    # Landroid/hardware/display/IDisplayManager;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredEventsMask:J

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayInfoCache:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$1;

    const/16 v1, 0x8

    const-string v2, "cache_key.display_info"

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal$1;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    .line 180
    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 182
    nop

    .line 184
    :try_start_49
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    invoke-interface {p1}, Landroid/hardware/display/IDisplayManager;->getPreferredWideGamutColorSpaceId()I

    move-result v1

    aget-object v0, v0, v1

    .line 183
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWideColorSpace:Landroid/graphics/ColorSpace;

    .line 185
    invoke-interface {p1}, Landroid/hardware/display/IDisplayManager;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mOverlayProperties:Landroid/hardware/OverlayProperties;
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_5f} :catch_61

    .line 188
    nop

    .line 189
    return-void

    .line 186
    :catch_61
    move-exception v0

    .line 187
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private calculateEventsMaskLocked()I
    .registers 8

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "mask":I
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    .line 485
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 486
    int-to-long v3, v0

    iget-object v5, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-wide v5, v5, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mEventsMask:J

    or-long/2addr v3, v5

    long-to-int v0, v3

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 488
    .end local v2    # "i":I
    :cond_1a
    iget-boolean v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    if-eqz v2, :cond_23

    .line 489
    int-to-long v2, v0

    const-wide/16 v4, 0x7

    or-long/2addr v2, v4

    long-to-int v0, v2

    .line 493
    :cond_23
    return v0
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "event"    # I

    .line 1915
    packed-switch p0, :pswitch_data_16

    .line 1927
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1925
    :pswitch_6
    const-string v0, "HDR_SDR_RATIO_CHANGED"

    return-object v0

    .line 1923
    :pswitch_9
    const-string v0, "BRIGHTNESS_CHANGED"

    return-object v0

    .line 1921
    :pswitch_c
    const-string v0, "REMOVED"

    return-object v0

    .line 1919
    :pswitch_f
    const-string v0, "CHANGED"

    return-object v0

    .line 1917
    :pswitch_12
    const-string v0, "ADDED"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .line 1616
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 1617
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1618
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 1619
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->mListener:Landroid/hardware/display/SemDeviceStatusListener;

    if-ne v2, p1, :cond_18

    .line 1620
    return v1

    .line 1618
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1624
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method private findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 472
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 473
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_19

    .line 474
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-ne v2, p1, :cond_16

    .line 475
    return v1

    .line 473
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 478
    .end local v1    # "i":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method private findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 1442
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    .line 1443
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1444
    .local v0, "numListeners":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDisplayVolumeKeyListnerLocked numListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_33

    .line 1446
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeKeyListener;

    if-ne v2, p1, :cond_30

    .line 1447
    return v1

    .line 1445
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1451
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method private findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .line 1392
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    .line 1393
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1394
    .local v0, "numListeners":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findDisplayVolumeListnerLocked numListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_33

    .line 1396
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    iget-object v2, v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->mListener:Landroid/hardware/display/SemDisplayVolumeListener;

    if-ne v2, p1, :cond_30

    .line 1397
    return v1

    .line 1395
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1401
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_33
    const/4 v0, -0x1

    return v0
.end method

.method private findWifiDisplayParameterListnerLocked(Landroid/hardware/display/SemWifiDisplayParameterListener;)I
    .registers 5
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;

    .line 1492
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_35

    .line 1493
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1494
    .local v0, "numListeners":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findWifiDisplayParameterListnerLocked numListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_35

    .line 1496
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    invoke-static {v2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->-$$Nest$fgetmListener(Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;)Landroid/hardware/display/SemWifiDisplayParameterListener;

    move-result-object v2

    if-ne v2, p1, :cond_32

    .line 1497
    return v1

    .line 1495
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1501
    .end local v0    # "numListeners":I
    .end local v1    # "i":I
    :cond_35
    const/4 v0, -0x1

    return v0
.end method

.method private getDisplayInfoLocked(I)Landroid/view/DisplayInfo;
    .registers 10
    .param p1, "displayId"    # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    if-eqz v1, :cond_11

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/DisplayInfo;

    goto :goto_1d

    .line 248
    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_19

    move-object v0, v1

    .line 251
    goto :goto_1d

    .line 249
    :catch_19
    move-exception v1

    .line 250
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 253
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1d
    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 254
    return-object v1

    .line 258
    :cond_21
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_SUPPORT_COMPAT_SANDBOX:Z

    if-eqz v2, :cond_59

    .line 259
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    .line 260
    .local v2, "thread":Landroid/app/ActivityThread;
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 261
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    :cond_2f
    invoke-static {v1}, Lcom/samsung/android/core/CompatSandbox;->isDisplaySandboxingEnabled(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 262
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 263
    .local v3, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 264
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 265
    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 266
    .local v4, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 267
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 271
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    .end local v2    # "thread":Landroid/app/ActivityThread;
    .end local v3    # "appBounds":Landroid/graphics/Rect;
    .end local v4    # "maxBounds":Landroid/graphics/Rect;
    :cond_59
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 272
    .local v1, "thread":Landroid/app/ActivityThread;
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isDexCompatMode()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 273
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 274
    .local v2, "threadConfig":Landroid/content/res/Configuration;
    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 275
    .local v3, "windowingMode":I
    const/4 v4, 0x5

    if-ne v3, v4, :cond_9b

    iget v4, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v4, :cond_9b

    iget v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v4, :cond_9b

    iget v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v4, :cond_9b

    .line 279
    iget v4, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v4, v4

    const v5, 0x3bcccccd    # 0.00625f

    mul-float/2addr v4, v5

    .line 280
    .local v4, "density":F
    iget v5, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 281
    .local v5, "width":I
    iget v7, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v6

    float-to-int v6, v7

    .line 282
    .local v6, "height":I
    iput v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v5, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 283
    iput v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 293
    .end local v1    # "thread":Landroid/app/ActivityThread;
    .end local v2    # "threadConfig":Landroid/content/res/Configuration;
    .end local v3    # "windowingMode":I
    .end local v4    # "density":F
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_9b
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 298
    return-object v0
.end method

.method public static getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    .registers 4

    .line 213
    const-class v0, Landroid/hardware/display/DisplayManagerGlobal;

    monitor-enter v0

    .line 214
    :try_start_3
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    if-nez v1, :cond_1a

    .line 215
    const-string v1, "display"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 216
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_1a

    .line 217
    new-instance v2, Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {v1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;-><init>(Landroid/hardware/display/IDisplayManager;)V

    sput-object v2, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    .line 220
    .end local v1    # "b":Landroid/os/IBinder;
    :cond_1a
    sget-object v1, Landroid/hardware/display/DisplayManagerGlobal;->sInstance:Landroid/hardware/display/DisplayManagerGlobal;

    monitor-exit v0

    return-object v1

    .line 221
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;
    .registers 4
    .param p0, "handler"    # Landroid/os/Handler;

    .line 461
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 462
    .local v0, "looper":Landroid/os/Looper;
    :goto_b
    if-nez v0, :cond_11

    .line 463
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 465
    :cond_11
    if-eqz v0, :cond_14

    .line 468
    return-object v0

    .line 466
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not get Looper for the UI thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleDeviceEvent(Landroid/os/Bundle;I)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Bundle;
    .param p2, "event"    # I

    .line 1628
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1629
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 1630
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1631
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1c

    .line 1632
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->sendDeviceEvent(Landroid/os/Bundle;I)V

    .line 1631
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1635
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 1636
    return-void

    .line 1635
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private handleDisplayEvent(II)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "event"    # I

    .line 517
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 527
    .local v1, "info":Landroid/view/DisplayInfo;
    const/4 v2, 0x2

    if-ne p2, v2, :cond_29

    iget-boolean v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    if-eqz v2, :cond_29

    .line 530
    if-nez p1, :cond_29

    .line 533
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 534
    .local v2, "display":Landroid/view/DisplayInfo;
    if-eqz v2, :cond_29

    iget v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 535
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    .line 536
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v3

    iput v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 538
    invoke-static {v3}, Landroid/hardware/display/DisplayManagerGlobal;->nSignalNativeCallbacks(F)V

    .line 542
    .end local v2    # "display":Landroid/view/DisplayInfo;
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_41

    .line 545
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 546
    .local v2, "listener":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v2, p1, p2, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->sendDisplayEvent(IILandroid/view/DisplayInfo;)V

    .line 547
    .end local v2    # "listener":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    goto :goto_30

    .line 548
    :cond_40
    return-void

    .line 542
    .end local v1    # "info":Landroid/view/DisplayInfo;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private handleDisplayVolumeEvent(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 1505
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1506
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 1507
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1508
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1c

    .line 1509
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->sendDisplayVolumeEvent(ILandroid/os/Bundle;)V

    .line 1508
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1512
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 1513
    return-void

    .line 1512
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private handleDisplayVolumeKeyEvent(I)V
    .registers 6
    .param p1, "event"    # I

    .line 1516
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 1518
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1519
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1c

    .line 1520
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->sendDisplayVolumeKeyEvent(I)V

    .line 1519
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1523
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 1524
    return-void

    .line 1523
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private handleWifiDisplayParameterEvent(ILjava/util/List;)V
    .registers 7
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)V"
        }
    .end annotation

    .line 1527
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1528
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1c

    .line 1529
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1530
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_1c

    .line 1531
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->sendWifiDisplayParameterEvent(ILjava/util/List;)V

    .line 1530
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1534
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_1c
    monitor-exit v0

    .line 1535
    return-void

    .line 1534
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public static invalidateLocalDisplayInfoCaches()V
    .registers 1

    .line 1858
    const-string v0, "cache_key.display_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 1859
    return-void
.end method

.method private static native nSignalNativeCallbacks(F)V
.end method

.method private registerCallbackIfNeededLocked()V
    .registers 3

    .line 497
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    if-nez v0, :cond_f

    .line 498
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback-IA;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    .line 499
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 501
    :cond_f
    return-void
.end method

.method private updateCallbackIfNeededLocked()V
    .registers 6

    .line 504
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->calculateEventsMaskLocked()I

    move-result v0

    .line 505
    .local v0, "mask":I
    int-to-long v1, v0

    iget-wide v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredEventsMask:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d

    .line 507
    :try_start_b
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mCallback:Landroid/hardware/display/DisplayManagerGlobal$DisplayManagerCallback;

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/display/IDisplayManager;->registerCallbackWithEventMask(Landroid/hardware/display/IDisplayManagerCallback;J)V

    .line 508
    int-to-long v1, v0

    iput-wide v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mRegisteredEventsMask:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_17

    .line 511
    goto :goto_1d

    .line 509
    :catch_17
    move-exception v1

    .line 510
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 513
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public areUserDisabledHdrTypesAllowed()Z
    .registers 3

    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->areUserDisabledHdrTypesAllowed()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 679
    :catch_7
    move-exception v0

    .line 680
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectWifiDisplay(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V
    .registers 6
    .param p1, "wifidisplayConfig"    # Landroid/hardware/display/SemWifiDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1226
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    :try_start_4
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    invoke-direct {v0, p0, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManager$SemWifiDisplayConnectionCallback;Landroid/os/Handler;)V

    :goto_9
    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayConnectionCallback:Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayConnectionCallback;

    .line 1227
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, v0}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplayWithConfig(Landroid/hardware/display/SemWifiDisplayConfig;Landroid/hardware/display/IWifiDisplayConnectionCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 1230
    nop

    .line 1232
    return-void

    .line 1228
    :catch_12
    move-exception v0

    .line 1229
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 574
    if-eqz p1, :cond_f

    .line 579
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->connectWifiDisplay(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 582
    nop

    .line 583
    return-void

    .line 580
    :catch_9
    move-exception v0

    .line 581
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 575
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertToBrightness(F)I
    .registers 4
    .param p1, "nits"    # F

    .line 2168
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->convertToBrightness(F)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2169
    :catch_7
    move-exception v0

    .line 2170
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createSpegVirtualDisplay(Ljava/lang/String;I)Landroid/hardware/display/VirtualDisplay;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 726
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 727
    :cond_6
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, v1, v1}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 728
    .local v0, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    .line 729
    .local v2, "dmi":Landroid/hardware/display/DisplayManagerInternal;
    invoke-virtual {v2, p1, p2, v0}, Landroid/hardware/display/DisplayManagerInternal;->createSpegVirtualDisplay(Ljava/lang/String;ILandroid/hardware/display/IVirtualDisplayCallback;)I

    move-result v3

    .line 730
    .local v3, "displayId":I
    const-string v4, "SPEG"

    if-gez v3, :cond_32

    .line 731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create speg display for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-object v1

    .line 735
    :cond_32
    invoke-virtual {p0, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v5

    .line 736
    .local v5, "display":Landroid/view/Display;
    if-nez v5, :cond_5b

    .line 737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not obtain display info for created display: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :try_start_4e
    iget-object v4, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v4, v0}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_55

    .line 742
    nop

    .line 743
    return-object v1

    .line 740
    :catch_55
    move-exception v1

    .line 741
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 745
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_5b
    new-instance v4, Landroid/hardware/display/VirtualDisplay;

    invoke-direct {v4, p0, v5, v0, v1}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    move-object v1, v4

    .line 746
    .local v1, "vd":Landroid/hardware/display/VirtualDisplay;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/hardware/display/VirtualDisplay;->setDisplayState(Z)V

    .line 747
    return-object v1
.end method

.method public createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)Landroid/hardware/display/VirtualDisplay;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;
    .param p3, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p4, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 755
    new-instance v0, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v0, p4, p5}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 756
    .local v0, "callbackWrapper":Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 759
    .local v1, "projectionToken":Landroid/media/projection/IMediaProjection;
    :goto_d
    :try_start_d
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 759
    invoke-interface {v2, p3, v0, v1, v3}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_1d

    .line 763
    .local v2, "displayId":I
    nop

    .line 764
    invoke-virtual {p0, p3, v0, v2}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v3

    return-object v3

    .line 761
    .end local v2    # "displayId":I
    :catch_1d
    move-exception v2

    .line 762
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;
    .registers 9
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callbackWrapper"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "displayId"    # I

    .line 775
    const/4 v0, 0x0

    const-string v1, "DisplayManager"

    if-gez p3, :cond_20

    .line 776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create virtual display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-object v0

    .line 779
    :cond_20
    invoke-virtual {p0, p3}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 780
    .local v2, "display":Landroid/view/Display;
    if-nez v2, :cond_4d

    .line 781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not obtain display info for newly created virtual display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 782
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    invoke-static {v1, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :try_start_40
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p2}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_45} :catch_47

    .line 787
    nop

    .line 788
    return-object v0

    .line 785
    :catch_47
    move-exception v0

    .line 786
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 790
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4d
    new-instance v0, Landroid/hardware/display/VirtualDisplay;

    .line 791
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, p0, v2, p2, v1}, Landroid/hardware/display/VirtualDisplay;-><init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/view/Display;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 790
    return-object v0
.end method

.method public disableLocalDisplayInfoCaches()V
    .registers 2

    .line 1865
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayCache:Landroid/app/PropertyInvalidatedCache;

    .line 1866
    return-void
.end method

.method public disconnectWifiDisplay()V
    .registers 3

    .line 604
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->disconnectWifiDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 607
    nop

    .line 608
    return-void

    .line 605
    :catch_7
    move-exception v0

    .line 606
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public fitToActiveDisplay(Z)V
    .registers 5
    .param p1, "status"    # Z

    .line 1548
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->fitToActiveDisplay(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1551
    goto :goto_e

    .line 1549
    :catch_6
    move-exception v0

    .line 1550
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to fit/unfit to active display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 623
    if-eqz p1, :cond_f

    .line 628
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 631
    nop

    .line 632
    return-void

    .line 629
    :catch_9
    move-exception v0

    .line 630
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 624
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAmbientBrightnessStats()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1072
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1073
    .local v0, "stats":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    if-nez v0, :cond_d

    .line 1074
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1076
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 1077
    .end local v0    # "stats":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/AmbientBrightnessDayStats;>;"
    :catch_12
    move-exception v0

    .line 1078
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4
    .param p1, "userId"    # I

    .line 2153
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBackupBrightnessConfiguration(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2154
    :catch_7
    move-exception v0

    .line 2155
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBrightness(I)F
    .registers 4
    .param p1, "displayId"    # I

    .line 1025
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightness(I)F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1026
    :catch_7
    move-exception v0

    .line 1027
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 5
    .param p1, "uniqueDisplayId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 922
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 923
    :catch_7
    move-exception v0

    .line 924
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4
    .param p1, "userId"    # I

    .line 935
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 936
    :catch_7
    move-exception v0

    .line 937
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 844
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    .line 845
    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 846
    .local v0, "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/BrightnessChangeEvent;>;"
    if-nez v0, :cond_d

    .line 847
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 849
    :cond_d
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v1

    .line 850
    .end local v0    # "events":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catch_12
    move-exception v0

    .line 851
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;
    .registers 4
    .param p1, "displayId"    # I

    .line 860
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 861
    :catch_7
    move-exception v0

    .line 862
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 382
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 383
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_8

    .line 384
    const/4 v1, 0x0

    return-object v1

    .line 386
    :cond_8
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method public getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "daj"    # Landroid/view/DisplayAdjustments;

    .line 364
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 365
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v0, :cond_8

    .line 366
    const/4 v1, 0x0

    return-object v1

    .line 368
    :cond_8
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p0, p1, v0, p2}, Landroid/view/Display;-><init>(Landroid/hardware/display/DisplayManagerGlobal;ILandroid/view/DisplayInfo;Landroid/view/DisplayAdjustments;)V

    return-object v1
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    .line 948
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 949
    :catch_7
    move-exception v0

    .line 950
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDeviceMaxVolume()I
    .registers 4

    .line 1311
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDeviceMaxVolume()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1312
    :catch_7
    move-exception v0

    .line 1313
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getDeviceMaxVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1314
    const/4 v1, -0x1

    return v1
.end method

.method public getDeviceMinVolume()I
    .registers 4

    .line 1320
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDeviceMinVolume()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1321
    :catch_7
    move-exception v0

    .line 1322
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getDeviceMinVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1323
    const/4 v1, -0x1

    return v1
.end method

.method public getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;
    .registers 4
    .param p1, "displayId"    # I

    .line 1010
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayDecorationSupport(I)Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1011
    :catch_7
    move-exception v0

    .line 1012
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDisplayIds()[I
    .registers 2

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayIds(Z)[I
    .registers 4
    .param p1, "includeDisabled"    # Z

    .line 319
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_11

    .line 326
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1}, Landroid/hardware/display/IDisplayManager;->getDisplayIds(Z)[I

    move-result-object v1

    .line 330
    .local v1, "displayIds":[I
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 331
    monitor-exit v0

    return-object v1

    .line 332
    .end local v1    # "displayIds":[I
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    .end local p1    # "includeDisabled":Z
    :try_start_10
    throw v1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_11} :catch_11

    .line 333
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local p1    # "includeDisabled":Z
    :catch_11
    move-exception v0

    .line 334
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "displayId"    # I

    .line 233
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;
    .registers 4

    .line 1278
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1279
    :catch_7
    move-exception v0

    .line 1280
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getDlnaDevice "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    new-instance v1, Landroid/hardware/display/SemDlnaDevice;

    invoke-direct {v1}, Landroid/hardware/display/SemDlnaDevice;-><init>()V

    return-object v1
.end method

.method public getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 1145
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1146
    :catch_7
    move-exception v0

    .line 1147
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .registers 3

    .line 1134
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1135
    :catch_7
    move-exception v0

    .line 1136
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMinimumBrightnessCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1060
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    .line 1061
    .local v0, "curve":Landroid/hardware/display/Curve;
    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getX()[F

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/display/Curve;->getY()[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 1062
    .end local v0    # "curve":Landroid/hardware/display/Curve;
    :catch_13
    move-exception v0

    .line 1063
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getOverlaySupport()Landroid/hardware/OverlayProperties;
    .registers 2

    .line 883
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mOverlayProperties:Landroid/hardware/OverlayProperties;

    return-object v0
.end method

.method public getPreferredWideGamutColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 874
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWideColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getPresentationOwner(I)Ljava/lang/String;
    .registers 5
    .param p1, "displayId"    # I

    .line 1565
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getPresentationOwner(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1566
    :catch_7
    move-exception v0

    .line 1567
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Fail to get PresentationOwner."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    const-string v1, ""

    return-object v1
.end method

.method public getPrimaryPhysicalDisplayId()J
    .registers 3

    .line 1907
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 1908
    :catch_7
    move-exception v0

    .line 1909
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getRealDisplay(I)Landroid/view/Display;
    .registers 3
    .param p1, "displayId"    # I

    .line 397
    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRateSwitchingType()I
    .registers 3

    .line 1209
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getRefreshRateSwitchingType()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1210
    :catch_7
    move-exception v0

    .line 1211
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getScreenSharingStatus()I
    .registers 4

    .line 1252
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getScreenSharingStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1253
    :catch_7
    move-exception v0

    .line 1254
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed getScreenSharingStatus "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    const/4 v1, -0x1

    return v1
.end method

.method public getStableDisplaySize()Landroid/graphics/Point;
    .registers 3

    .line 833
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 834
    :catch_7
    move-exception v0

    .line 835
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSupportedHdrOutputTypes()[I
    .registers 3

    .line 1156
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getSupportedHdrOutputTypes()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1157
    :catch_7
    move-exception v0

    .line 1158
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .registers 4
    .param p1, "displayId"    # I

    .line 1110
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getSystemPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1111
    :catch_7
    move-exception v0

    .line 1112
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserDisabledHdrTypes()[I
    .registers 3

    .line 690
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 691
    :catch_7
    move-exception v0

    .line 692
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;
    .registers 4
    .param p1, "displayId"    # I

    .line 1099
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1100
    :catch_7
    move-exception v0

    .line 1101
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 3

    .line 637
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 638
    :catch_7
    move-exception v0

    .line 639
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isDeviceVolumeMuted()Z
    .registers 4

    .line 1329
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->isDeviceVolumeMuted()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1330
    :catch_7
    move-exception v0

    .line 1331
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed isDeviceVolumeMuted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1332
    const/4 v1, 0x0

    return v1
.end method

.method public isFitToActiveDisplay()Z
    .registers 4

    .line 1556
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->isFitToActiveDisplay()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1557
    :catch_7
    move-exception v0

    .line 1558
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to get active display\'s fit status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1559
    const/4 v1, 0x0

    return v1
.end method

.method public isMinimalPostProcessingRequested(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 961
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->isMinimalPostProcessingRequested(I)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 962
    :catch_7
    move-exception v0

    .line 963
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUidPresentOnDisplay(II)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "displayId"    # I

    .line 347
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->isUidPresentOnDisplay(II)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 348
    :catch_7
    move-exception v0

    .line 349
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isWifiDisplayWithPinSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 1539
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->isWifiDisplayWithPinSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1540
    :catch_7
    move-exception v0

    .line 1541
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to get dongle pin supported feature Wifi display"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1542
    const/4 v1, 0x0

    return v1
.end method

.method public overrideHdrTypes(I[I)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "modes"    # [I

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->overrideHdrTypes(I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 706
    nop

    .line 707
    return-void

    .line 704
    :catch_7
    move-exception v0

    .line 705
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public pauseWifiDisplay()V
    .registers 3

    .line 587
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->pauseWifiDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 590
    nop

    .line 591
    return-void

    .line 588
    :catch_7
    move-exception v0

    .line 589
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1581
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 1582
    const-string v0, "DisplayManager"

    const-string v1, "registerDeviceListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    if-eqz p1, :cond_2f

    .line 1587
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v1

    .line 1589
    .local v1, "index":I
    if-gez v1, :cond_2a

    .line 1590
    const-string v2, "DisplayManager"

    const-string v3, "registerDeviceListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;-><init>(Landroid/hardware/display/SemDeviceStatusListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1594
    .end local v1    # "index":I
    :cond_2a
    monitor-exit v0

    goto :goto_37

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v1

    .line 1584
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1596
    :cond_37
    :goto_37
    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .registers 8
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "eventsMask"    # J

    .line 411
    invoke-static {p2}, Landroid/hardware/display/DisplayManagerGlobal;->getLooperForHandler(Landroid/os/Handler;)Landroid/os/Looper;

    move-result-object v0

    .line 412
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 413
    .local v1, "springBoard":Landroid/os/Handler;
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;J)V

    .line 414
    return-void
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;J)V
    .registers 9
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "eventsMask"    # J

    .line 424
    if-eqz p1, :cond_3a

    .line 428
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_32

    .line 432
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_b
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    .line 434
    .local v1, "index":I
    if-gez v1, :cond_1f

    .line 435
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;-><init>(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;J)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    goto :goto_2a

    .line 438
    :cond_1f
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    invoke-virtual {v2, p3, p4}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->setEventsMask(J)V

    .line 440
    :goto_2a
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 441
    .end local v1    # "index":I
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_2f

    throw v1

    .line 429
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The set of events to listen to must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1405
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 1406
    const-string v0, "DisplayManager"

    const-string v1, "registerDisplayVolumeKeyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    if-eqz p1, :cond_2f

    .line 1411
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1412
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v1

    .line 1413
    .local v1, "index":I
    if-gez v1, :cond_2a

    .line 1414
    const-string v2, "DisplayManager"

    const-string v3, "registerDisplayVolumeKeyListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeKeyListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1418
    .end local v1    # "index":I
    :cond_2a
    monitor-exit v0

    goto :goto_37

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v1

    .line 1408
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1420
    :cond_37
    :goto_37
    return-void
.end method

.method public registerDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1355
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 1356
    const-string v0, "DisplayManager"

    const-string v1, "registerDisplayVolumeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    if-eqz p1, :cond_2f

    .line 1361
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v1

    .line 1363
    .local v1, "index":I
    if-gez v1, :cond_2a

    .line 1364
    const-string v2, "DisplayManager"

    const-string v3, "registerDisplayVolumeListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;-><init>(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1368
    .end local v1    # "index":I
    :cond_2a
    monitor-exit v0

    goto :goto_37

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v1

    .line 1358
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1370
    :cond_37
    :goto_37
    return-void
.end method

.method public registerNativeChoreographerForRefreshRateCallbacks()V
    .registers 4

    .line 1877
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1878
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 1879
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1880
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1881
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfoLocked(I)Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1882
    .local v1, "display":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_1c

    .line 1885
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    iput v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mNativeCallbackReportedRefreshRate:F

    .line 1886
    invoke-static {v2}, Landroid/hardware/display/DisplayManagerGlobal;->nSignalNativeCallbacks(F)V

    .line 1888
    .end local v1    # "display":Landroid/view/DisplayInfo;
    :cond_1c
    monitor-exit v0

    .line 1889
    return-void

    .line 1888
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public registerWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1455
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_37

    .line 1456
    const-string v0, "DisplayManager"

    const-string v1, "registerWifiDisplayParameterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    if-eqz p1, :cond_2f

    .line 1461
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1462
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findWifiDisplayParameterListnerLocked(Landroid/hardware/display/SemWifiDisplayParameterListener;)I

    move-result v1

    .line 1463
    .local v1, "index":I
    if-gez v1, :cond_2a

    .line 1464
    const-string v2, "DisplayManager"

    const-string v3, "registerWifiDisplayParameterListener index < 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;-><init>(Landroid/hardware/display/SemWifiDisplayParameterListener;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V

    .line 1468
    .end local v1    # "index":I
    :cond_2a
    monitor-exit v0

    goto :goto_37

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_2c

    throw v1

    .line 1458
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1470
    :cond_37
    :goto_37
    return-void
.end method

.method public releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    .registers 4
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;

    .line 814
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 817
    nop

    .line 818
    return-void

    .line 815
    :catch_7
    move-exception v0

    .line 816
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 611
    if-eqz p1, :cond_f

    .line 616
    :try_start_2
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_9

    .line 619
    nop

    .line 620
    return-void

    .line 617
    :catch_9
    move-exception v0

    .line 618
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 612
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestColorMode(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "colorMode"    # I

    .line 712
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestColorMode(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 715
    nop

    .line 716
    return-void

    .line 713
    :catch_7
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestSetWifiDisplayParameters(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;)Z"
        }
    .end annotation

    .line 1338
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/SemWifiDisplayParameter;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->requestSetWifiDisplayParameters(Ljava/util/List;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1339
    :catch_7
    move-exception v0

    .line 1340
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed requestSetWifiDisplayParameters "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z
    .registers 6
    .param p1, "parameterGroup"    # Ljava/lang/String;
    .param p2, "parameter"    # Landroid/hardware/display/SemWifiDisplayParameter;

    .line 1347
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->requestWifiDisplayParameter(Ljava/lang/String;Landroid/hardware/display/SemWifiDisplayParameter;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1348
    :catch_7
    move-exception v0

    .line 1349
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed requestSetWifiDisplayParameters "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    .end local v0    # "ex":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2124
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->resetBrightnessConfigurationForUser(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2127
    nop

    .line 2128
    return-void

    .line 2125
    :catch_7
    move-exception v0

    .line 2126
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    .registers 7
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 806
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 809
    nop

    .line 810
    return-void

    .line 807
    :catch_7
    move-exception v0

    .line 808
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resumeWifiDisplay()V
    .registers 3

    .line 595
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->resumeWifiDisplay()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 598
    nop

    .line 599
    return-void

    .line 596
    :catch_7
    move-exception v0

    .line 597
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    .registers 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "rotation"    # I

    .line 1218
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->rotateVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1221
    nop

    .line 1222
    return-void

    .line 1219
    :catch_7
    move-exception v0

    .line 1220
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAreUserDisabledHdrTypesAllowed(Z)V
    .registers 4
    .param p1, "areUserDisabledHdrTypesAllowed"    # Z

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setAreUserDisabledHdrTypesAllowed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 669
    nop

    .line 670
    return-void

    .line 667
    :catch_7
    move-exception v0

    .line 668
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 6
    .param p1, "config"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2140
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setBackupBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2143
    nop

    .line 2144
    return-void

    .line 2141
    :catch_7
    move-exception v0

    .line 2142
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBrightness(IF)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 995
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setBrightness(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 998
    nop

    .line 999
    return-void

    .line 996
    :catch_7
    move-exception v0

    .line 997
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "uniqueDisplayId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 908
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 911
    nop

    .line 912
    return-void

    .line 909
    :catch_7
    move-exception v0

    .line 910
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 6
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 894
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 897
    nop

    .line 898
    return-void

    .line 895
    :catch_7
    move-exception v0

    .line 896
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/display/BrightnessConfiguration;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2109
    .local p4, "weights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "timeWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/display/IDisplayManager;->setBrightnessConfigurationForUserWithStats(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 2112
    nop

    .line 2113
    return-void

    .line 2110
    :catch_d
    move-exception v0

    .line 2111
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDeviceVolume(I)V
    .registers 5
    .param p1, "volume"    # I

    .line 1287
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setDeviceVolume(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1290
    goto :goto_e

    .line 1288
    :catch_6
    move-exception v0

    .line 1289
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setDeviceVolume "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setDeviceVolumeMuted(Z)V
    .registers 5
    .param p1, "muted"    # Z

    .line 1295
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setDeviceVolumeMuted(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1298
    goto :goto_e

    .line 1296
    :catch_6
    move-exception v0

    .line 1297
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setDeviceVolumeMuted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1299
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;)V
    .registers 6
    .param p1, "dlnaDevice"    # Landroid/hardware/display/SemDlnaDevice;

    .line 1268
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1270
    .local v0, "binder":Landroid/os/IBinder;
    :try_start_5
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1, p1, v0}, Landroid/hardware/display/IDisplayManager;->setDlnaDevice(Landroid/hardware/display/SemDlnaDevice;Landroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1273
    goto :goto_13

    .line 1271
    :catch_b
    move-exception v1

    .line 1272
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "DisplayManager"

    const-string v3, "Failed setDlnaDevice "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1274
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .registers 4
    .param p1, "hdrConversionMode"    # Landroid/hardware/display/HdrConversionMode;

    .line 1121
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1124
    nop

    .line 1125
    return-void

    .line 1122
    :catch_7
    move-exception v0

    .line 1123
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setRefreshRateSwitchingType(I)V
    .registers 4
    .param p1, "newValue"    # I

    .line 1195
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setRefreshRateSwitchingType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1198
    nop

    .line 1199
    return-void

    .line 1196
    :catch_7
    move-exception v0

    .line 1197
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setScreenSharingStatus(I)V
    .registers 5
    .param p1, "status"    # I

    .line 1261
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setScreenSharingStatus(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1264
    goto :goto_e

    .line 1262
    :catch_6
    move-exception v0

    .line 1263
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setScreenSharingStatus "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1169
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setShouldAlwaysRespectAppRequestedMode(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1172
    nop

    .line 1173
    return-void

    .line 1170
    :catch_7
    move-exception v0

    .line 1171
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 4
    .param p1, "adjustment"    # F

    .line 1043
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1046
    nop

    .line 1047
    return-void

    .line 1044
    :catch_7
    move-exception v0

    .line 1045
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTemporaryBrightness(IF)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F

    .line 979
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setTemporaryBrightness(IF)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 982
    nop

    .line 983
    return-void

    .line 980
    :catch_7
    move-exception v0

    .line 981
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTemporaryBrightnessForSlowChange(IFZ)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "brightness"    # F
    .param p3, "slowChange"    # Z

    .line 2093
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/display/IDisplayManager;->setTemporaryBrightnessForSlowChange(IFZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 2096
    nop

    .line 2097
    return-void

    .line 2094
    :catch_7
    move-exception v0

    .line 2095
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserDisabledHdrTypes([I)V
    .registers 4
    .param p1, "userDisabledHdrTypes"    # [I

    .line 649
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setUserDisabledHdrTypes([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 652
    nop

    .line 653
    return-void

    .line 650
    :catch_7
    move-exception v0

    .line 651
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "mode"    # Landroid/view/Display$Mode;

    .line 1088
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1091
    nop

    .line 1092
    return-void

    .line 1089
    :catch_7
    move-exception v0

    .line 1090
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    .registers 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "isOn"    # Z

    .line 822
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 825
    nop

    .line 826
    return-void

    .line 823
    :catch_7
    move-exception v0

    .line 824
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V
    .registers 5
    .param p1, "token"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 796
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    .line 797
    if-eqz p2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, p1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplayState(Landroid/hardware/display/IVirtualDisplayCallback;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 800
    nop

    .line 801
    return-void

    .line 798
    :catch_f
    move-exception v0

    .line 799
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeKeyEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .line 1303
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->setVolumeKeyEvent(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1306
    goto :goto_e

    .line 1304
    :catch_6
    move-exception v0

    .line 1305
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed setVolumeKeyEvent "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1307
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1574
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->setWifiDisplayParam(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1577
    goto :goto_e

    .line 1575
    :catch_6
    move-exception v0

    .line 1576
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed to setWifiDisplayParam"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public shouldAlwaysRespectAppRequestedMode()Z
    .registers 3

    .line 1182
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0}, Landroid/hardware/display/IDisplayManager;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 1183
    :catch_7
    move-exception v0

    .line 1184
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startWifiDisplayScan()V
    .registers 4

    .line 551
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->registerCallbackIfNeededLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    .line 555
    :try_start_6
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayScan()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_e
    .catchall {:try_start_6 .. :try_end_b} :catchall_14

    .line 558
    nop

    .line 559
    :try_start_c
    monitor-exit v0

    .line 560
    return-void

    .line 556
    :catch_e
    move-exception v1

    .line 557
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    throw v2

    .line 559
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1
.end method

.method public startWifiDisplayScan(I)V
    .registers 5
    .param p1, "scanChannel"    # I

    .line 1236
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayChannelScan(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1239
    goto :goto_e

    .line 1237
    :catch_6
    move-exception v0

    .line 1238
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed startWifiDisplayChannelScan "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public startWifiDisplayScan(II)V
    .registers 6
    .param p1, "scanChannel"    # I
    .param p2, "interval"    # I

    .line 1244
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManager;->startWifiDisplayChannelScanAndInterval(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1247
    goto :goto_e

    .line 1245
    :catch_6
    move-exception v0

    .line 1246
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "DisplayManager"

    const-string v2, "Failed startWifiDisplayChannelScan "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public stopWifiDisplayScan()V
    .registers 4

    .line 563
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDm:Landroid/hardware/display/IDisplayManager;

    invoke-interface {v1}, Landroid/hardware/display/IDisplayManager;->stopWifiDisplayScan()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_d
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    .line 569
    nop

    .line 570
    :try_start_9
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_b
    move-exception v1

    goto :goto_13

    .line 567
    :catch_d
    move-exception v1

    .line 568
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    throw v2

    .line 570
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/display/DisplayManagerGlobal;
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw v1
.end method

.method public unregisterDeviceListener(Landroid/hardware/display/SemDeviceStatusListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/SemDeviceStatusListener;

    .line 1599
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    .line 1600
    if-eqz p1, :cond_24

    .line 1604
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1605
    :try_start_9
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDeviceListnerLocked(Landroid/hardware/display/SemDeviceStatusListener;)I

    move-result v1

    .line 1606
    .local v1, "index":I
    if-ltz v1, :cond_1f

    .line 1607
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;

    .line 1608
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;->clearEvents()V

    .line 1609
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1611
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DeviceListenerDelegate;
    :cond_1f
    monitor-exit v0

    goto :goto_2c

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_21

    throw v1

    .line 1601
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1613
    :cond_2c
    :goto_2c
    return-void
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 445
    if-eqz p1, :cond_23

    .line 449
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayListenerLocked(Landroid/hardware/display/DisplayManager$DisplayListener;)I

    move-result v1

    .line 451
    .local v1, "index":I
    if-ltz v1, :cond_1e

    .line 452
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;

    .line 453
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;->clearEvents()V

    .line 454
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 455
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 457
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayListenerDelegate;
    :cond_1e
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v1

    .line 446
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterDisplayVolumeKeyListener(Landroid/hardware/display/SemDisplayVolumeKeyListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeKeyListener;

    .line 1423
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 1424
    const-string v0, "DisplayManager"

    const-string v1, "unregisterDisplayVolumeKeyListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    if-eqz p1, :cond_32

    .line 1429
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeKeyListnerLocked(Landroid/hardware/display/SemDisplayVolumeKeyListener;)I

    move-result v1

    .line 1431
    .local v1, "index":I
    if-ltz v1, :cond_2d

    .line 1432
    const-string v2, "DisplayManager"

    const-string v3, "unregisterDisplayVolumeKeyListener index >= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;

    .line 1434
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;->clearEvents()V

    .line 1435
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeKeyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1437
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeKeyListenerDelegate;
    :cond_2d
    monitor-exit v0

    goto :goto_3a

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v1

    .line 1426
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1439
    :cond_3a
    :goto_3a
    return-void
.end method

.method public unregisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/SemDisplayVolumeListener;

    .line 1373
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 1374
    const-string v0, "DisplayManager"

    const-string v1, "unregisterDisplayVolumeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    if-eqz p1, :cond_32

    .line 1379
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1380
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findDisplayVolumeListnerLocked(Landroid/hardware/display/SemDisplayVolumeListener;)I

    move-result v1

    .line 1381
    .local v1, "index":I
    if-ltz v1, :cond_2d

    .line 1382
    const-string v2, "DisplayManager"

    const-string v3, "unregisterDisplayVolumeListener index >= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;

    .line 1384
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;->clearEvents()V

    .line 1385
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDisplayVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1387
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$DisplayVolumeListenerDelegate;
    :cond_2d
    monitor-exit v0

    goto :goto_3a

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v1

    .line 1376
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1389
    :cond_3a
    :goto_3a
    return-void
.end method

.method public unregisterNativeChoreographerForRefreshRateCallbacks()V
    .registers 3

    .line 1898
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1899
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerGlobal;->mDispatchNativeCallbacks:Z

    .line 1900
    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerGlobal;->updateCallbackIfNeededLocked()V

    .line 1901
    monitor-exit v0

    .line 1902
    return-void

    .line 1901
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public unregisterWifiDisplayParameterListener(Landroid/hardware/display/SemWifiDisplayParameterListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/hardware/display/SemWifiDisplayParameterListener;

    .line 1473
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 1474
    const-string v0, "DisplayManager"

    const-string v1, "unregisterWifiDisplayParameterListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    if-eqz p1, :cond_32

    .line 1479
    iget-object v0, p0, Landroid/hardware/display/DisplayManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1480
    :try_start_10
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->findWifiDisplayParameterListnerLocked(Landroid/hardware/display/SemWifiDisplayParameterListener;)I

    move-result v1

    .line 1481
    .local v1, "index":I
    if-ltz v1, :cond_2d

    .line 1482
    const-string v2, "DisplayManager"

    const-string v3, "unregisterWifiDisplayParameterListener index >= 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v2, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;

    .line 1484
    .local v2, "d":Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;->clearEvents()V

    .line 1485
    iget-object v3, p0, Landroid/hardware/display/DisplayManagerGlobal;->mWifiDisplayParameterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1487
    .end local v1    # "index":I
    .end local v2    # "d":Landroid/hardware/display/DisplayManagerGlobal$WifiDisplayParameterListenerDelegate;
    :cond_2d
    monitor-exit v0

    goto :goto_3a

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw v1

    .line 1476
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_3a
    :goto_3a
    return-void
.end method
