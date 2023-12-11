.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field public static sEnableServiceNotFoundWtf:Z

.field private static volatile sInitializing:Z

.field private static sServiceCacheSize:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetsServiceCacheSize()I
    .registers 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputsServiceCacheSize(I)V
    .registers 1

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    .line 431
    const-string v0, "SystemServiceRegistry"

    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 435
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    .line 437
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    .line 439
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    .line 450
    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v5, "accessibility"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 457
    const-class v3, Landroid/view/accessibility/CaptioningManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v5, "captioning"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 464
    const-class v3, Landroid/accounts/AccountManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v5, "account"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 473
    const-class v3, Landroid/app/ActivityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v5, "activity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 480
    const-class v3, Landroid/app/ActivityTaskManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v5, "activity_task"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 487
    const-class v3, Landroid/app/UriGrantsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v5, "uri_grants"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 495
    const-class v3, Landroid/app/AlarmManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v5, "alarm"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 504
    const-class v3, Landroid/media/AudioManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v5, "audio"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 511
    const-class v3, Landroid/media/AudioDeviceVolumeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string v5, "audio_device_volume"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 518
    const-class v3, Landroid/media/MediaRouter;

    new-instance v4, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string/jumbo v5, "media_router"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 525
    const-class v3, Landroid/os/CustomFrequencyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v5, "CustomFrequencyManagerService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 539
    const-class v3, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v4, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string v5, "iccc"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 561
    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v5, "hdmi_control"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 569
    const-class v3, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string/jumbo v5, "textclassification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 576
    const-class v3, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v5, "selection_toolbar"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 585
    const-class v3, Landroid/graphics/fonts/FontManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string v5, "font"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 593
    const-class v3, Landroid/content/ClipboardManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string v5, "clipboard"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 604
    const-class v3, Landroid/text/ClipboardManager;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-class v2, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string/jumbo v4, "semclipboard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 615
    const-class v2, Landroid/net/PacProxyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string/jumbo v4, "pac_proxy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 624
    const-class v2, Landroid/os/IBinder;

    new-instance v3, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string/jumbo v4, "netd"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 631
    const-class v2, Landroid/net/TetheringManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string/jumbo v4, "tethering"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 639
    const-class v2, Landroid/net/VpnManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string/jumbo v4, "vpn_management"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 648
    const-class v2, Landroid/net/vcn/VcnManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string/jumbo v4, "vcn_management"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 657
    const-class v2, Landroid/location/CountryDetector;

    new-instance v3, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string v4, "country_detector"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 665
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v4, "device_policy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 673
    const-class v2, Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v4, "download"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 683
    const-class v2, Landroid/os/SemHqmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v4, "HqmManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 697
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18b

    .line 699
    const-class v2, Landroid/os/SemHcmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string v4, "HcmManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 713
    :cond_18b
    const-class v2, Landroid/os/BatteryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string v4, "batterymanager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 724
    const-class v2, Landroid/os/DropBoxManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string v4, "dropbox"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 733
    const-class v2, Landroid/transparency/BinaryTransparencyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string/jumbo v4, "transparency"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 745
    const-class v2, Landroid/hardware/input/InputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v4, "input"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 752
    const-class v2, Landroid/hardware/display/DisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string v4, "display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 759
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string v4, "color_display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 771
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string v4, "input_method"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 778
    const-class v2, Landroid/view/textservice/TextServicesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string/jumbo v4, "textservices"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 786
    const-class v2, Landroid/app/KeyguardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v4, "keyguard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 793
    const-class v2, Landroid/view/LayoutInflater;

    new-instance v3, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v4, "layout_inflater"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 800
    const-class v2, Landroid/location/LocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v4, "location"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 808
    const-class v2, Lcom/samsung/android/location/SemLocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v4, "sec_location"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 817
    const-class v2, Landroid/net/NetworkPolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 825
    const-class v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v4, "notification"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 841
    const-class v2, Landroid/app/people/PeopleManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v4, "people"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 848
    const-class v2, Landroid/os/PowerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v4, "power"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 873
    const-class v2, Landroid/os/PerformanceHintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v4, "performance_hint"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 881
    const-class v2, Landroid/os/RecoverySystem;

    new-instance v3, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v4, "recovery"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 890
    const-class v2, Landroid/app/SearchManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 898
    const-class v2, Landroid/hardware/SensorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v4, "sensor"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 906
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string/jumbo v4, "sensor_privacy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 913
    const-class v2, Landroid/app/StatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v4, "statusbar"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 920
    const-class v2, Landroid/app/SemStatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v4, "sem_statusbar"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 929
    const-class v2, Lcom/samsung/android/edge/SemEdgeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string v4, "edge"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 940
    const-class v2, Landroid/os/storage/StorageManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v4, "storage"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 947
    const-class v2, Landroid/app/usage/StorageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v4, "storagestats"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 956
    const-class v2, Landroid/os/SystemUpdateManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v4, "system_update"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 967
    const-class v2, Landroid/os/SystemConfigManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v4, "system_config"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 974
    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v4, "telephony_registry"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 981
    const-class v2, Landroid/telecom/TelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v4, "telecom"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 988
    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->hasSamsungTelecomSystemFeature()Z

    move-result v2

    if-eqz v2, :cond_31d

    .line 989
    const-class v2, Lcom/samsung/android/telecom/SemTelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v4, "samsung_telecom"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 997
    :cond_31d
    const-class v2, Landroid/telephony/MmsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string/jumbo v4, "mms"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1004
    const-class v2, Landroid/app/UiModeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v4, "uimode"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1011
    const-class v2, Landroid/hardware/usb/UsbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v4, "usb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1019
    const-class v2, Landroid/debug/AdbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string v4, "adb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1028
    const-class v2, Landroid/hardware/SerialManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v4, "serial"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1036
    const-class v2, Landroid/os/VibratorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string/jumbo v4, "vibrator_manager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1043
    const-class v2, Landroid/os/Vibrator;

    new-instance v3, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v4, "vibrator"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1050
    const-class v2, Landroid/app/WallpaperManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string/jumbo v4, "wallpaper"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1077
    const-class v2, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v3, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v4, "wifinl80211"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1086
    const-class v2, Lcom/samsung/android/powerSolution/powerSolutionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v4, "PowerSolution_Framework_service"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1097
    const-class v2, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v4, "CameraServiceWorker_manager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1105
    const-class v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string/jumbo v4, "window"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1112
    const-class v2, Landroid/os/UserManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string/jumbo v4, "user"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1121
    const-class v2, Landroid/app/AppOpsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string v4, "appops"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1130
    const-class v2, Landroid/hardware/camera2/CameraManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v4, "camera"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1137
    const-class v2, Landroid/content/pm/LauncherApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v4, "launcherapps"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1144
    const-class v2, Landroid/content/RestrictionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string/jumbo v4, "restrictions"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1153
    const-class v2, Landroid/print/PrintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v4, "print"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1168
    const-class v2, Landroid/companion/CompanionDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string v4, "companiondevice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1183
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string/jumbo v4, "virtualdevice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1197
    const-class v2, Landroid/hardware/ConsumerIrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string v4, "consumer_ir"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1204
    const-class v2, Landroid/app/trust/TrustManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string/jumbo v4, "trust"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1212
    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string v4, "fingerprint"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1226
    const-class v2, Landroid/hardware/face/FaceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string v4, "face"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1242
    const-class v2, Landroid/hardware/iris/IrisManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string v4, "iris"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1254
    const-class v2, Landroid/hardware/biometrics/BiometricManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string v4, "biometric"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1267
    const-class v2, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string/jumbo v4, "tv_interactive_app"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1279
    const-class v2, Landroid/media/tv/TvInputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string/jumbo v4, "tv_input"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1288
    const-class v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v4, "tv_tuner_resource_mgr"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1299
    const-class v2, Landroid/net/NetworkScoreManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v4, "network_score"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1306
    const-class v2, Landroid/app/usage/UsageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string/jumbo v4, "usagestats"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1315
    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v4, "persistent_data_block"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1331
    const-class v2, Landroid/service/oemlock/OemLockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string/jumbo v4, "oem_lock"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1345
    const-class v2, Landroid/media/projection/MediaProjectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string/jumbo v4, "media_projection"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1352
    const-class v2, Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string v4, "appwidget"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1361
    const-class v2, Landroid/media/midi/MidiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string/jumbo v4, "midi"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1369
    const-class v2, Landroid/hardware/radio/RadioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string v4, "broadcastradio"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1376
    const-class v2, Landroid/os/HardwarePropertiesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string v4, "hardware_properties"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1386
    const-class v2, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string/jumbo v4, "soundtrigger"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1394
    const-class v2, Landroid/content/pm/ShortcutManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string/jumbo v4, "shortcut"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1402
    const-class v2, Landroid/content/om/OverlayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string/jumbo v4, "overlay"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1413
    const-class v2, Landroid/net/NetworkWatchlistManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string/jumbo v4, "network_watchlist"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1424
    const-class v2, Landroid/os/health/SystemHealthManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string/jumbo v4, "systemhealth"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1432
    const-class v2, Landroid/hardware/location/ContextHubManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string v4, "contexthub"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1440
    const-class v2, Landroid/os/IncidentManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string v4, "incident"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1447
    const-class v2, Landroid/os/BugreportManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string v4, "bugreport"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1457
    const-class v2, Landroid/view/autofill/AutofillManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string v4, "autofill"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1467
    const-class v2, Landroid/credentials/CredentialManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string v4, "credential"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1480
    const-class v2, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string/jumbo v4, "music_recognition"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1491
    const-class v2, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string v4, "content_capture"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1514
    const-class v2, Landroid/view/translation/TranslationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string/jumbo v4, "translation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1528
    const-class v2, Landroid/view/translation/UiTranslationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string/jumbo v4, "ui_translation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1541
    const-class v2, Landroid/app/search/SearchUiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v4, "search_ui"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1551
    const-class v2, Landroid/app/smartspace/SmartspaceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v4, "smartspace"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1561
    const-class v2, Landroid/app/prediction/AppPredictionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string v4, "app_prediction"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1571
    const-class v2, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string v4, "content_suggestions"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1585
    const-class v2, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string/jumbo v4, "wallpaper_effects_generation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1599
    const-class v2, Landroid/app/VrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string/jumbo v4, "vrmanager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1607
    const-class v2, Landroid/content/pm/CrossProfileApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v4, "crossprofileapps"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1619
    const-class v2, Landroid/app/slice/SliceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string/jumbo v4, "slice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1630
    const-class v2, Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string/jumbo v4, "sem_wifi"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1642
    const-class v2, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string/jumbo v4, "sem_wifi_p2p"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1652
    const-class v2, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string/jumbo v4, "sem_wifi_aware"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1664
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_651

    .line 1665
    const-class v2, Lcom/samsung/android/continuity/SemContinuityManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string v4, "SemContinuityService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1678
    :cond_651
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1679
    .local v2, "fmradioChipVendor":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_673

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_673

    .line 1680
    const-class v3, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    new-instance v4, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string v5, "FMPlayer"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1690
    :cond_673
    const-class v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string/jumbo v5, "motion_recognition"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1697
    const-class v3, Landroid/hardware/scontext/SContextManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string/jumbo v5, "scontext"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1706
    const-class v3, Landroid/app/timedetector/TimeDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v5, "time_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1714
    const-class v3, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string/jumbo v5, "time_zone_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1722
    const-class v3, Landroid/app/time/TimeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string/jumbo v5, "time_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1730
    const-class v3, Landroid/permission/PermissionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string/jumbo v5, "permission"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1738
    const-class v3, Landroid/permission/LegacyPermissionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string/jumbo v5, "legacy_permission"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1746
    const-class v3, Landroid/permission/PermissionControllerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string/jumbo v5, "permission_controller"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1754
    const-class v3, Landroid/permission/PermissionCheckerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string/jumbo v5, "permission_checker"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1762
    const-class v3, Landroid/os/PermissionEnforcer;

    new-instance v4, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string/jumbo v5, "permission_enforcer"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1770
    const-class v3, Landroid/os/image/DynamicSystemManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string v5, "dynamic_system"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1781
    const-class v3, Landroid/os/BatteryStatsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string v5, "batterystats"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1791
    const-class v3, Landroid/content/pm/DataLoaderManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string v5, "dataloader_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1800
    const-class v3, Landroid/hardware/lights/LightsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string/jumbo v5, "lights"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1807
    const-class v3, Landroid/app/LocaleManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string/jumbo v5, "locale"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1815
    const-class v3, Landroid/os/incremental/IncrementalManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string v5, "incremental"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1827
    const-class v3, Landroid/security/FileIntegrityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v5, "file_integrity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1838
    const-class v3, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string v5, "attestation_verification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1851
    const-class v3, Landroid/content/integrity/AppIntegrityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string v5, "app_integrity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1859
    const-class v3, Landroid/apphibernation/AppHibernationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$146;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$146;-><init>()V

    const-string v5, "app_hibernation"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1866
    const-class v3, Landroid/app/DreamManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$147;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$147;-><init>()V

    const-string v5, "dream"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1873
    const-class v3, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$148;-><init>()V

    const-string v5, "device_state"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1882
    const-class v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$149;-><init>()V

    const-string v5, "CocktailBarService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1892
    const-class v3, Landroid/media/metrics/MediaMetricsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$150;-><init>()V

    const-string/jumbo v5, "media_metrics"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1904
    const-class v3, Landroid/app/GameManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$151;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$151;-><init>()V

    const-string v5, "game"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1914
    const-class v3, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$152;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$152;-><init>()V

    const-string v5, "domain_verification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1927
    const-class v3, Landroid/view/displayhash/DisplayHashManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$153;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$153;-><init>()V

    const-string v5, "display_hash"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1936
    const/4 v3, 0x0

    .line 1938
    .local v3, "isExynosDisplaySolutionService":Z
    :try_start_7c5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1939
    const v5, 0x111014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_7d0
    .catch Ljava/lang/Exception; {:try_start_7c5 .. :try_end_7d0} :catch_7d2

    move v3, v4

    .line 1942
    goto :goto_7d8

    .line 1940
    :catch_7d2
    move-exception v4

    .line 1941
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Not starting ExynosDisplaySolutionService"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1944
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7d8
    if-eqz v3, :cond_7e6

    .line 1945
    const-class v4, Landroid/hardware/display/ExynosDisplaySolutionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$154;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$154;-><init>()V

    const-string v6, "exynos_display"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1961
    :cond_7e6
    const-class v4, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$155;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$155;-><init>()V

    const-string v6, "ambient_context"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1973
    const-class v4, Landroid/app/wearable/WearableSensingManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$156;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$156;-><init>()V

    const-string/jumbo v6, "wearable_sensing"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1985
    const-class v4, Landroid/app/GrammaticalInflectionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$157;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$157;-><init>()V

    const-string v6, "grammatical_inflection"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1996
    const-class v4, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$158;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$158;-><init>()V

    const-string/jumbo v6, "shared_connectivity"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2006
    const-class v4, Lcom/samsung/android/multicontrol/SemMultiControlManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$159;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$159;-><init>()V

    const-string/jumbo v6, "multicontrol"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2023
    const-class v4, Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$160;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$160;-><init>()V

    const-string/jumbo v6, "persona"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2032
    const-class v4, Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$161;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$161;-><init>()V

    const-string/jumbo v6, "rcp"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2043
    const-class v4, Lcom/samsung/android/isrb/IsrbManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$162;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$162;-><init>()V

    const-string/jumbo v6, "isrb"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2053
    const-class v4, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$163;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$163;-><init>()V

    const-string/jumbo v6, "remoteappmode"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2070
    const-class v4, Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$164;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$164;-><init>()V

    const-string/jumbo v6, "mDNIe"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2081
    const-class v4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$165;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$165;-><init>()V

    const-string v6, "DisplaySolution"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemDisplayQualityFeature.ENABLED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",PLATFORM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    sget-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    if-eqz v0, :cond_8a6

    .line 2094
    const-class v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$166;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$166;-><init>()V

    const-string v5, "DisplayQuality"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2108
    :cond_8a6
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$167;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$167;-><init>()V

    const-string v5, "SemInputDeviceManagerService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2120
    sget-boolean v0, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v0, :cond_8c3

    .line 2121
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$168;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$168;-><init>()V

    const-string/jumbo v5, "sepunion"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2133
    :cond_8c3
    const-class v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    new-instance v4, Landroid/app/SystemServiceRegistry$169;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$169;-><init>()V

    const-string v5, "SemVideoTranscodingService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2144
    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$170;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$170;-><init>()V

    const-string v5, "desktopmode"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2161
    const-class v0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    new-instance v4, Landroid/app/SystemServiceRegistry$171;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$171;-><init>()V

    const-string v5, "CodecSolution"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2171
    const-class v0, Lcom/samsung/android/net/ExtendedEthernetManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$172;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$172;-><init>()V

    const-string v5, "extendedethernetservice"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2184
    const-class v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$173;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$173;-><init>()V

    const-string/jumbo v5, "spengestureservice"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2212
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2216
    :try_start_903
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    .line 2217
    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    .line 2218
    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    .line 2219
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    .line 2220
    invoke-static {}, Landroid/nfc/NfcFrameworkInitializer;->registerServiceWrappers()V

    .line 2221
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    .line 2222
    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    .line 2223
    invoke-static {}, Landroid/health/connect/HealthServicesInitializer;->registerServiceWrappers()V

    .line 2224
    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    .line 2225
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    .line 2226
    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    .line 2227
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    .line 2228
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    .line 2229
    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    .line 2230
    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    .line 2231
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    .line 2232
    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    .line 2233
    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    .line 2234
    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    .line 2235
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    .line 2236
    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    .line 2237
    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    .line 2238
    invoke-static {}, Landroid/devicelock/DeviceLockFrameworkInitializer;->registerServiceWrappers()V

    .line 2239
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer;->registerServiceWrappers()V

    .line 2241
    invoke-static {}, Lcom/samsung/android/shell/ShellFrameworkInitializer;->registerServiceWrappers()V

    .line 2243
    invoke-static {}, Lcom/samsung/android/lifeguard/LifeGuardManagerFrameworkInitializer;->initialize()V
    :try_end_951
    .catchall {:try_start_903 .. :try_end_951} :catchall_955

    .line 2247
    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2248
    nop

    .line 2249
    .end local v2    # "fmradioChipVendor":Ljava/lang/String;
    .end local v3    # "isExynosDisplaySolutionService":Z
    return-void

    .line 2247
    .restart local v2    # "fmradioChipVendor":Ljava/lang/String;
    .restart local v3    # "isExynosDisplaySolutionService":Z
    :catchall_955
    move-exception v0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2248
    throw v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .registers 1

    .line 2261
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static ensureInitializing(Ljava/lang/String;)V
    .registers 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 2253
    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const-string v1, "Internal error: %s can only be called during class initialization."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2255
    return-void
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 2269
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2270
    return-object v0

    .line 2272
    :cond_4
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 2273
    .local v1, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    const-string v2, "SystemServiceRegistry"

    if-nez v1, :cond_2b

    .line 2274
    sget-boolean v3, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v3, :cond_2a

    .line 2275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown manager requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_2a
    return-object v0

    .line 2280
    :cond_2b
    invoke-interface {v1, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v3

    .line 2281
    .local v3, "ret":Ljava/lang/Object;
    sget-boolean v4, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v4, :cond_a1

    if-nez v3, :cond_a1

    .line 2283
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_a2

    :cond_3c
    goto :goto_85

    :sswitch_3d
    const-string v4, "incremental"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x2

    goto :goto_86

    :sswitch_47
    const-string v4, "content_capture"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x0

    goto :goto_86

    :sswitch_51
    const-string/jumbo v4, "virtualdevice"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x6

    goto :goto_86

    :sswitch_5c
    const-string v4, "contexthub"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x4

    goto :goto_86

    :sswitch_66
    const-string/jumbo v4, "virtualization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x5

    goto :goto_86

    :sswitch_71
    const-string v4, "app_prediction"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x1

    goto :goto_86

    :sswitch_7b
    const-string v4, "ethernet"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const/4 v4, 0x3

    goto :goto_86

    :goto_85
    const/4 v4, -0x1

    :goto_86
    packed-switch v4, :pswitch_data_c0

    .line 2293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Manager wrapper not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    return-object v0

    .line 2291
    :pswitch_a0
    return-object v0

    .line 2296
    :cond_a1
    return-object v3

    :sswitch_data_a2
    .sparse-switch
        -0x5499b029 -> :sswitch_7b
        -0x2dd60a93 -> :sswitch_71
        0x35db2f9 -> :sswitch_66
        0x1051cce6 -> :sswitch_5c
        0x38858921 -> :sswitch_51
        0x3a1b1980 -> :sswitch_47
        0x40b177da -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
    .end packed-switch
.end method

.method public static getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2335
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2304
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_4

    .line 2305
    const/4 v0, 0x0

    return-object v0

    .line 2307
    :cond_4
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2308
    .local v0, "serviceName":Ljava/lang/String;
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_2e

    if-nez v0, :cond_2e

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceRegistry"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_2e
    return-object v0
.end method

.method public static onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .registers 4
    .param p0, "e"    # Landroid/os/ServiceManager$ServiceNotFoundException;

    .line 2680
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "SystemServiceRegistry"

    if-ge v0, v1, :cond_12

    .line 2681
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2683
    :cond_12
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :goto_19
    return-void
.end method

.method public static registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2495
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2496
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2497
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    new-instance v0, Landroid/app/SystemServiceRegistry$177;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$177;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2509
    return-void
.end method

.method public static registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2523
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2524
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2528
    new-instance v0, Landroid/app/SystemServiceRegistry$178;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$178;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2534
    return-void
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 5
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 2321
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    return-void
.end method

.method public static registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2438
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2439
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2440
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2443
    new-instance v0, Landroid/app/SystemServiceRegistry$175;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$175;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2450
    return-void
.end method

.method public static registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .registers 4
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2462
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2463
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2464
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    new-instance v0, Landroid/app/SystemServiceRegistry$176;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$176;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2473
    return-void
.end method
