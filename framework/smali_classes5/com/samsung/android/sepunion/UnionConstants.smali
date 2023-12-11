.class public final Lcom/samsung/android/sepunion/UnionConstants;
.super Ljava/lang/Object;
.source "UnionConstants.java"


# static fields
.field public static final BUNDLE_KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final BUNDLE_KEY_COMPONENT_LIST:Ljava/lang/String; = "component_list"

.field public static final BUNDLE_KEY_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field public static final BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final BUNDLE_KEY_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final CUSTOM_EVENT_ACTIVITY_STATE:Ljava/lang/String; = "monitor_activity_state"

.field public static final CUSTOM_EVENT_CALL_STATE:Ljava/lang/String; = "monitor_call_state"

.field public static final CUSTOM_EVENT_PACKAGE_STATE:Ljava/lang/String; = "monitor_package_state"

.field public static final EXTRA_KEY_ACTION_ORIGIN:Ljava/lang/String; = "action_origin"

.field public static final EXTRA_KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final EXTRA_KEY_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final EXTRA_KEY_IS_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final EXTRA_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final EXTRA_KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final EXTRA_KEY_URI:Ljava/lang/String; = "uri"

.field public static final FLAG_CHECK_CONDITION_NONE:I = 0x0

.field public static final FLAG_CHECK_CONDITION_PACKAGE_NAME:I = 0x1

.field public static final FLAG_CHECK_CONDITION_PERMISSION:I = 0x2

.field public static final LOG_TAG_COVER:Ljava/lang/String; = "CoverManager_"

.field public static final MASK_FLAG_CHECK_CONDITION:I = 0x3

.field public static final PACKAGE_STATE_ADDED:Ljava/lang/String; = "package_added"

.field public static final PACKAGE_STATE_MODIFIED:Ljava/lang/String; = "package_modified"

.field public static final PACKAGE_STATE_REMOVED:Ljava/lang/String; = "package_removed"

.field public static final PATH_LOG_FILE:Ljava/lang/String; = "/data/log/sepunion/"

.field public static final SERVICE_COVER:Ljava/lang/String; = "cover"

.field public static final SERVICE_DEVICE_INFO:Ljava/lang/String; = "semeventdelegator"

.field public static final SERVICE_DUMP:Ljava/lang/String; = "semcustomdump"

.field public static final SERVICE_ENGMODE:Ljava/lang/String; = "EngmodeService"

.field public static final SERVICE_EXCLUSIVE_TASK:Ljava/lang/String; = "exclusivetask"

.field public static final SERVICE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final SERVICE_FW_BR_RECEIVER_AGENT:Ljava/lang/String; = "brreceiveragent"

.field public static final SERVICE_GALAXY_REGISTRY:Ljava/lang/String; = "galaxyregistry"

.field public static final SERVICE_GOOD_CATCH:Ljava/lang/String; = "goodcatch"

.field public static final SERVICE_HERMES:Ljava/lang/String; = "HermesService"

.field public static final SERVICE_ONE_HAND:Ljava/lang/String; = "onehand"

.field public static final SERVICE_PAYMENT_SAFETY:Ljava/lang/String; = "PaymentSafetyService"

.field public static final SERVICE_PLUGIN:Ljava/lang/String; = "plugin"

.field public static final SERVICE_PRIVACY_DASHBOARD:Ljava/lang/String; = "PrivacyDashboard"

.field public static final SERVICE_QRNG:Ljava/lang/String; = "QRNGService"

.field public static final SERVICE_SHORTCUT:Ljava/lang/String; = "execute"

.field public static final SERVICE_START_AUTO:I = 0x0

.field public static final SERVICE_START_MANUAL:I = 0x1

.field public static final SERVICE_TIPS:Ljava/lang/String; = "tips"

.field public static final SERVICE_VDC_OBSERVER:Ljava/lang/String; = "VDCObserver"

.field public static final TYPE_ALL:I = 0x0

.field public static final TYPE_CUSTOM_EVENT:I = 0x3

.field public static final TYPE_INTENT_ACTION:I = 0x2

.field public static final TYPE_URI:I = 0x1

.field public static final sClassPathForManager:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sClassPathForService:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sServiceStartType:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    .line 41
    const-string v1, "com.samsung.android.sepunion.SemEventDelegationManager"

    const-string/jumbo v2, "semeventdelegator"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "com.samsung.android.sepunion.SemPluginManager"

    const-string/jumbo v3, "plugin"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "com.samsung.android.app.SemExecutableManager"

    const-string v4, "execute"

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v5, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v6, "exclusivetask"

    if-eqz v1, :cond_31

    .line 49
    const-string v1, "com.samsung.android.sepunion.SemExclusiveTaskManager"

    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_31
    const-string v1, "com.samsung.android.sepunion.OneHandServiceManager"

    const-string/jumbo v7, "onehand"

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "com.samsung.android.sepunion.GalaxyRegistryServiceManager"

    const-string v8, "galaxyregistry"

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "com.samsung.android.sepunion.BRReceiverAgentServiceManager"

    const-string v9, "brreceiveragent"

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "semcustomdump"

    const-string v10, "com.samsung.android.sepunion.SemCustomDumpManager"

    invoke-virtual {v0, v1, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "com.samsung.android.service.HermesService.HermesServiceManager"

    const-string v10, "HermesService"

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "com.samsung.android.sepunion.TipsManager"

    const-string/jumbo v11, "tips"

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "com.samsung.android.sepunion.SemGoodCatchManager"

    const-string/jumbo v12, "goodcatch"

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    .line 77
    const-string v1, "com.android.server.sepunion.SemDeviceInfoManagerService"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "com.android.server.sepunion.SemPluginManagerService"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "com.android.server.sepunion.SemShortcutManagerService"

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 85
    const-string v1, "com.android.server.sepunion.SemExclusiveTaskManagerService"

    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_8b
    const-string v1, "com.android.server.sepunion.OneHandService"

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "com.android.server.sepunion.GalaxyRegistryService"

    invoke-virtual {v0, v8, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "com.android.server.sepunion.BRReceiverAgentService"

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "com.android.server.HermesService"

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "com.android.server.sepunion.TipsManagerService"

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "com.android.server.sepunion.EngmodeService"

    const-string v13, "EngmodeService"

    invoke-virtual {v0, v13, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "com.android.server.sepunion.SemGoodCatchService"

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "com.android.server.sepunion.SemPrivacyDashboardService"

    const-string v14, "PrivacyDashboard"

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v15, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v15

    const-string/jumbo v15, "paymentsafety"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object/from16 v17, v15

    const-string v15, "PaymentSafetyService"

    if-eqz v1, :cond_d5

    .line 113
    const-string v1, "com.android.server.sepunion.PaymentSafetyService"

    invoke-virtual {v0, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_d5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    move-object/from16 v18, v15

    const-string v15, "SEC_FLOATING_FEATURE_COMMON_CONFIG_VDC"

    invoke-virtual {v1, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v15

    const-string v15, "VDCOBSERVER"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    move-object/from16 v20, v15

    const-string v15, "VDCObserver"

    if-eqz v1, :cond_f4

    .line 119
    const-string v1, "com.android.server.sepunion.VDCObserverService"

    invoke-virtual {v0, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_f4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    .line 136
    const/4 v1, 0x0

    move-object/from16 v21, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_178
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_193

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_193
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
