.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/StatusBarManager$DisableInfo;,
        Landroid/app/StatusBarManager$RequestResultCallback;,
        Landroid/app/StatusBarManager$UndoCallback;,
        Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;,
        Landroid/app/StatusBarManager$MediaTransferReceiverState;,
        Landroid/app/StatusBarManager$MediaTransferSenderState;,
        Landroid/app/StatusBarManager$NavBarMode;,
        Landroid/app/StatusBarManager$RequestResult;,
        Landroid/app/StatusBarManager$SessionFlags;,
        Landroid/app/StatusBarManager$WindowVisibleState;,
        Landroid/app/StatusBarManager$WindowType;,
        Landroid/app/StatusBarManager$Disable2Flags;,
        Landroid/app/StatusBarManager$DisableFlags;
    }
.end annotation


# static fields
.field public static final ALL_SESSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_LAUNCH_SOURCE_LIFT_TRIGGER:I = 0x2

.field public static final CAMERA_LAUNCH_SOURCE_POWER_DOUBLE_TAP:I = 0x1

.field public static final CAMERA_LAUNCH_SOURCE_QUICK_AFFORDANCE:I = 0x3

.field public static final CAMERA_LAUNCH_SOURCE_WIGGLE:I = 0x0

.field public static final DEFAULT_SETUP_DISABLE2_FLAGS:I = 0x0

.field public static final DEFAULT_SETUP_DISABLE_FLAGS:I = 0x3a50000

.field private static final DEFAULT_SIM_LOCKED_DISABLED_FLAGS:I = 0x10000

.field public static final DISABLE2_GLOBAL_ACTIONS:I = 0x8

.field public static final DISABLE2_MASK:I = 0x1f

.field public static final DISABLE2_NONE:I = 0x0

.field public static final DISABLE2_NOTIFICATION_SHADE:I = 0x4

.field public static final DISABLE2_QUICK_SETTINGS:I = 0x1

.field public static final DISABLE2_ROTATE_SUGGESTIONS:I = 0x10

.field public static final DISABLE2_SYSTEM_ICONS:I = 0x2

.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x7ff0000

.field public static final DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_ONGOING_CALL_CHIP:I = 0x4000000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field private static final MEDIA_CONTROL_BLANK_TITLE:J = 0x1060bc96L

.field private static final MEDIA_CONTROL_SESSION_ACTIONS:J = 0xc25bf22L

.field public static final MEDIA_TRANSFER_RECEIVER_STATE_CLOSE_TO_SENDER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_RECEIVER_STATE_FAR_FROM_SENDER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_RECEIVER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_RECEIVER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_END_CAST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_ALMOST_CLOSE_TO_START_CAST:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_FAR_FROM_RECEIVER:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_FAILED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_SUCCEEDED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_RECEIVER_TRIGGERED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_FAILED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_SUCCEEDED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MEDIA_TRANSFER_SENDER_STATE_TRANSFER_TO_THIS_DEVICE_TRIGGERED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x1

.field public static final NAVIGATION_HINT_IME_SHOWN:I = 0x2

.field public static final NAVIGATION_HINT_IME_SWITCHER_SHOWN:I = 0x4

.field public static final NAV_BAR_MODE_DEFAULT:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NAV_BAR_MODE_KIDS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SESSION_BIOMETRIC_PROMPT:I = 0x2

.field public static final SESSION_KEYGUARD:I = 0x1

.field public static final STATUS_BAR_CARLIFE:I = 0x2

.field public static final STATUS_BAR_DEX:I = 0x1

.field public static final STATUS_BAR_PHONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBarManager"

.field public static final TILE_ADD_REQUEST_ERROR_APP_NOT_IN_FOREGROUND:I = 0x3ec

.field public static final TILE_ADD_REQUEST_ERROR_BAD_COMPONENT:I = 0x3ea

.field public static final TILE_ADD_REQUEST_ERROR_MISMATCHED_PACKAGE:I = 0x3e8

.field public static final TILE_ADD_REQUEST_ERROR_NOT_CURRENT_USER:I = 0x3eb

.field public static final TILE_ADD_REQUEST_ERROR_NO_STATUS_BAR_SERVICE:I = 0x3ed

.field public static final TILE_ADD_REQUEST_ERROR_REQUEST_IN_PROGRESS:I = 0x3e9

.field private static final TILE_ADD_REQUEST_FIRST_ERROR_CODE:I = 0x3e8

.field public static final TILE_ADD_REQUEST_RESULT_DIALOG_DISMISSED:I = 0x3

.field public static final TILE_ADD_REQUEST_RESULT_TILE_ADDED:I = 0x2

.field public static final TILE_ADD_REQUEST_RESULT_TILE_ALREADY_ADDED:I = 0x1

.field public static final TILE_ADD_REQUEST_RESULT_TILE_NOT_ADDED:I = 0x0

.field public static final WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final WINDOW_STATE_HIDDEN:I = 0x2

.field public static final WINDOW_STATE_HIDING:I = 0x1

.field public static final WINDOW_STATE_SHOWING:I = 0x0

.field public static final WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;

.field private final nearbyMediaDevicesProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/NearbyMediaDevicesProvider;",
            "Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 264
    nop

    .line 265
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 266
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/app/StatusBarManager;->ALL_SESSIONS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 594
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 597
    nop

    .line 598
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 597
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 602
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 603
    return-void
.end method

.method private clickNotificationInternal(Ljava/lang/String;IIZ)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "count"    # I
    .param p4, "visible"    # Z

    .line 730
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 731
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_e

    .line 732
    nop

    .line 733
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v1

    .line 732
    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 737
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_e
    nop

    .line 738
    return-void

    .line 735
    :catch_10
    move-exception v0

    .line 736
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getBarTypeFromContext()I
    .registers 2

    .line 628
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 629
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayId"    # I

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "barType":I
    if-nez p1, :cond_13

    .line 643
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 644
    const/4 v0, 0x1

    goto :goto_17

    .line 646
    :cond_13
    const/4 v1, 0x2

    if-ne p1, v1, :cond_17

    .line 647
    const/4 v0, 0x1

    .line 649
    :cond_17
    :goto_17
    return v0
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    monitor-enter p0

    .line 607
    :try_start_1
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1c

    .line 608
    const-string/jumbo v0, "statusbar"

    .line 609
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 610
    if-nez v0, :cond_1c

    .line 611
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    .end local p0    # "this":Landroid/app/StatusBarManager;
    :cond_1c
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 606
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTag()Ljava/lang/String;
    .registers 6

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "tag":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "stack":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 658
    const-string v2, "[.]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "st":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    array-length v4, v2

    if-ge v3, v4, :cond_15

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 661
    .end local v3    # "i":I
    :cond_15
    array-length v3, v2

    if-lez v3, :cond_30

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .end local v2    # "st":[Ljava/lang/String;
    :cond_30
    return-object v0
.end method

.method static synthetic lambda$requestAddTileService$0(Ljava/util/function/Consumer;)V
    .registers 2
    .param p0, "resultCallback"    # Ljava/util/function/Consumer;

    .line 1113
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static useMediaSessionActionsForApp(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1344
    const-wide/32 v0, 0xc25bf22

    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public static windowStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1399
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string v0, "WINDOW_STATE_HIDING"

    return-object v0

    .line 1400
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "WINDOW_STATE_HIDDEN"

    return-object v0

    .line 1401
    :cond_c
    if-nez p0, :cond_11

    const-string v0, "WINDOW_STATE_SHOWING"

    return-object v0

    .line 1402
    :cond_11
    const-string v0, "WINDOW_STATE_UNKNOWN"

    return-object v0
.end method


# virtual methods
.method public canLaunchCaptureContentActivityForNote(Landroid/app/Activity;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 1390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 1392
    .local v0, "activityToken":Landroid/os/IBinder;
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v1

    .line 1393
    .local v1, "taskId":I
    new-instance v2, Lcom/android/internal/statusbar/AppClipsServiceConnector;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/statusbar/AppClipsServiceConnector;-><init>(Landroid/content/Context;)V

    .line 1394
    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/AppClipsServiceConnector;->canLaunchCaptureContentActivityForNote(I)Z

    move-result v2

    .line 1393
    return v2
.end method

.method public cancelRequestAddTile(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1139
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1142
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_7
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelRequestAddTile(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1145
    goto :goto_f

    .line 1143
    :catch_b
    move-exception v1

    .line 1144
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1146
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public clickNotification(Ljava/lang/String;IIZ)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "count"    # I
    .param p4, "visible"    # Z

    .line 725
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/StatusBarManager;->clickNotificationInternal(Ljava/lang/String;IIZ)V

    .line 726
    return-void
.end method

.method public collapsePanels()V
    .registers 3

    .line 796
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 797
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_d

    .line 801
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanelsToType(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 806
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_d
    nop

    .line 807
    return-void

    .line 804
    :catch_f
    move-exception v0

    .line 805
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disable(I)V
    .registers 9
    .param p1, "what"    # I

    .line 678
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 679
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 680
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_34

    .line 684
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 685
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v6

    .line 684
    move-object v1, v0

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_36

    .line 690
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_34
    nop

    .line 691
    return-void

    .line 688
    :catch_36
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disable2(I)V
    .registers 9
    .param p1, "what"    # I

    .line 703
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 704
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 705
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_34

    .line 709
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 710
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v6

    .line 709
    move-object v1, v0

    move v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_36

    .line 715
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_34
    nop

    .line 716
    return-void

    .line 713
    :catch_36
    move-exception v0

    .line 714
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disable2ToType(II)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "barType"    # I

    .line 922
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 923
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 924
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_31

    .line 925
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 926
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 925
    move-object v1, v0

    move v2, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_33

    .line 930
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_31
    nop

    .line 931
    return-void

    .line 928
    :catch_33
    move-exception v0

    .line 929
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableToType(II)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "barType"    # I

    .line 906
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 907
    .local v5, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 908
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_31

    .line 909
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 910
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 909
    move-object v1, v0

    move v2, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUserToType(ILandroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_31} :catch_33

    .line 914
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v5    # "userId":I
    :cond_31
    nop

    .line 915
    return-void

    .line 912
    :catch_33
    move-exception v0

    .line 913
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public expandNotificationsPanel()V
    .registers 3

    .line 766
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 767
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_d

    .line 771
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 776
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_d
    nop

    .line 777
    return-void

    .line 774
    :catch_f
    move-exception v0

    .line 775
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public expandSettingsPanel()V
    .registers 2

    .line 875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->expandSettingsPanel(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .registers 4
    .param p1, "subPanel"    # Ljava/lang/String;

    .line 887
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 888
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_d

    .line 892
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getBarTypeFromContext()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanelToType(Ljava/lang/String;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    .line 897
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_d
    nop

    .line 898
    return-void

    .line 895
    :catch_f
    move-exception v0

    .line 896
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDisableInfo()Landroid/app/StatusBarManager$DisableInfo;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1035
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1036
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1037
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v2, 0x0

    filled-new-array {v2, v2}, [I

    move-result-object v3

    .line 1038
    .local v3, "flags":[I
    if-eqz v1, :cond_1a

    .line 1039
    iget-object v4, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v4

    move-object v3, v4

    .line 1042
    :cond_1a
    new-instance v4, Landroid/app/StatusBarManager$DisableInfo;

    aget v2, v3, v2

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-direct {v4, v2, v5}, Landroid/app/StatusBarManager$DisableInfo;-><init>(II)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v4

    .line 1043
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v3    # "flags":[I
    :catch_25
    move-exception v0

    .line 1044
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLastSystemKey()I
    .registers 3

    .line 858
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 859
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_b

    .line 860
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->getLastSystemKey()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v1

    .line 864
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_b
    nop

    .line 865
    const/4 v0, -0x1

    return v0

    .line 862
    :catch_e
    move-exception v0

    .line 863
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNavBarMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1180
    const/4 v0, 0x0

    .line 1182
    .local v0, "navBarMode":I
    :try_start_1
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1183
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_c

    .line 1184
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->getNavBarMode()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_e

    move v0, v2

    .line 1188
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_c
    nop

    .line 1189
    return v0

    .line 1186
    :catch_e
    move-exception v1

    .line 1187
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public handleSystemKey(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "key"    # Landroid/view/KeyEvent;

    .line 836
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 837
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 838
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 842
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 843
    return-void

    .line 840
    :catch_b
    move-exception v0

    .line 841
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public logBlankMediaTitle(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1359
    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    const-wide/32 v1, 0x1060bc96

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 1363
    nop

    .line 1364
    return-void

    .line 1361
    :catch_a
    move-exception v0

    .line 1362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/NearbyMediaDevicesProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1289
    return-void

    .line 1292
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1293
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    new-instance v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    invoke-direct {v1, p1}, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;-><init>(Landroid/media/NearbyMediaDevicesProvider;)V

    .line 1295
    .local v1, "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1f

    .line 1299
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    nop

    .line 1300
    return-void

    .line 1297
    :catch_1f
    move-exception v0

    .line 1298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "slot"    # Ljava/lang/String;

    .line 952
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 953
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 954
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 958
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 959
    return-void

    .line 956
    :catch_b
    move-exception v0

    .line 957
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestAddTileService(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 14
    .param p1, "tileServiceComponentName"    # Landroid/content/ComponentName;
    .param p2, "tileLabel"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Icon;
    .param p4, "resultExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1106
    .local p5, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1112
    new-instance v0, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p5}, Landroid/app/StatusBarManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1114
    return-void

    .line 1116
    :cond_28
    iget-object v0, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 1117
    .local v0, "userId":I
    new-instance v6, Landroid/app/StatusBarManager$RequestResultCallback;

    invoke-direct {v6, p4, p5}, Landroid/app/StatusBarManager$RequestResultCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 1119
    .local v6, "callbackProxy":Landroid/app/StatusBarManager$RequestResultCallback;
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    .line 1121
    .local v7, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v0

    :try_start_3c
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 1130
    goto :goto_44

    .line 1128
    :catch_40
    move-exception v1

    .line 1129
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1131
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method

.method public requestTileServiceListeningState(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1058
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :try_start_3
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/statusbar/IStatusBarService;->requestTileServiceListeningState(Landroid/content/ComponentName;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_10} :catch_12

    .line 1063
    nop

    .line 1064
    return-void

    .line 1061
    :catch_12
    move-exception v0

    .line 1062
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public sendNotificationFeedback(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "feedback"    # Landroid/os/Bundle;

    .line 748
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 749
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 750
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 754
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 755
    return-void

    .line 752
    :catch_b
    move-exception v0

    .line 753
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDisabledForSetup(Z)V
    .registers 9
    .param p1, "disabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 986
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 987
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 988
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_57

    .line 989
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/high16 v3, 0x3a50000

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    iget-object v4, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 990
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 989
    invoke-interface {v1, v3, v4, v5, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 991
    if-eqz p1, :cond_37

    :cond_37
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 992
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_57} :catch_59

    .line 996
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_57
    nop

    .line 997
    return-void

    .line 994
    :catch_59
    move-exception v0

    .line 995
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setExpansionDisabledForSimNetworkLock(Z)V
    .registers 8
    .param p1, "disabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1012
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1013
    .local v0, "userId":I
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1014
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_34

    .line 1015
    if-eqz p1, :cond_13

    const/high16 v2, 0x10000

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    iget-object v3, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 1016
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/app/StatusBarManager;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1015
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_36

    .line 1020
    .end local v0    # "userId":I
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_34
    nop

    .line 1021
    return-void

    .line 1018
    :catch_36
    move-exception v0

    .line 1019
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .registers 12
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .line 938
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 939
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_14

    .line 940
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    .line 945
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_14
    nop

    .line 946
    return-void

    .line 943
    :catch_16
    move-exception v0

    .line 944
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 965
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 966
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 967
    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 971
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 972
    return-void

    .line 969
    :catch_b
    move-exception v0

    .line 970
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNavBarMode(I)V
    .registers 5
    .param p1, "navBarMode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1158
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 1159
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied navBarMode not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1164
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_28

    .line 1165
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavBarMode(I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2a

    .line 1169
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_28
    nop

    .line 1170
    return-void

    .line 1167
    :catch_2a
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public togglePanel()V
    .registers 3

    .line 818
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 819
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_9

    .line 820
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 824
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_9
    nop

    .line 825
    return-void

    .line 822
    :catch_b
    move-exception v0

    .line 823
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterNearbyMediaDevicesProvider(Landroid/media/NearbyMediaDevicesProvider;)V
    .registers 5
    .param p1, "provider"    # Landroid/media/NearbyMediaDevicesProvider;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1317
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    iget-object v0, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1319
    return-void

    .line 1322
    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1323
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    iget-object v1, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    .line 1324
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;

    .line 1325
    .local v1, "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    iget-object v2, p0, Landroid/app/StatusBarManager;->nearbyMediaDevicesProviderMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->unregisterNearbyMediaDevicesProvider(Landroid/media/INearbyMediaDevicesProvider;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_22

    .line 1329
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v1    # "providerWrapper":Landroid/app/StatusBarManager$NearbyMediaDevicesProviderWrapper;
    nop

    .line 1330
    return-void

    .line 1327
    :catch_22
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "appIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "appName"    # Ljava/lang/CharSequence;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1262
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1265
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :try_start_7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferReceiverDisplay(ILandroid/media/MediaRoute2Info;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1268
    goto :goto_f

    .line 1266
    :catch_b
    move-exception v1

    .line 1267
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1269
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method public updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 8
    .param p1, "displayState"    # I
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;
    .param p3, "undoExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "undoCallback"    # Ljava/lang/Runnable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1221
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const/4 v0, 0x4

    if-eq p1, v0, :cond_14

    const/4 v0, 0x5

    if-eq p1, v0, :cond_14

    if-nez p4, :cond_c

    goto :goto_14

    .line 1225
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The undoCallback should only be provided when the state is a transfer succeeded state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :cond_14
    :goto_14
    if-eqz p4, :cond_21

    if-eqz p3, :cond_19

    goto :goto_21

    .line 1230
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass an executor when you pass an undo callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_21
    :goto_21
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 1235
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    const/4 v1, 0x0

    .line 1236
    .local v1, "callbackProxy":Landroid/app/StatusBarManager$UndoCallback;
    if-eqz p3, :cond_2e

    .line 1237
    :try_start_28
    new-instance v2, Landroid/app/StatusBarManager$UndoCallback;

    invoke-direct {v2, p3, p4}, Landroid/app/StatusBarManager$UndoCallback;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    move-object v1, v2

    .line 1239
    :cond_2e
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->updateMediaTapToTransferSenderDisplay(ILandroid/media/MediaRoute2Info;Lcom/android/internal/statusbar/IUndoMediaTransferCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_31} :catch_32

    .line 1242
    .end local v1    # "callbackProxy":Landroid/app/StatusBarManager$UndoCallback;
    goto :goto_36

    .line 1240
    :catch_32
    move-exception v1

    .line 1241
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1243
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method
