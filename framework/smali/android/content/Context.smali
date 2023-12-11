.class public abstract Landroid/content/Context;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Context$CreatePackageOptions;,
        Landroid/content/Context$ServiceName;,
        Landroid/content/Context$RegisterReceiverFlags;,
        Landroid/content/Context$BindServiceFlags;,
        Landroid/content/Context$BindServiceFlagsLongBits;,
        Landroid/content/Context$BindServiceFlagsBits;,
        Landroid/content/Context$DatabaseMode;,
        Landroid/content/Context$PreferencesMode;,
        Landroid/content/Context$FileMode;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility"

.field public static final ACCOUNT_SERVICE:Ljava/lang/String; = "account"

.field public static final ACTIVITY_SERVICE:Ljava/lang/String; = "activity"

.field public static final ACTIVITY_TASK_SERVICE:Ljava/lang/String; = "activity_task"

.field public static final ADB_SERVICE:Ljava/lang/String; = "adb"

.field public static final ALARM_SERVICE:Ljava/lang/String; = "alarm"

.field public static final AMBIENT_CONTEXT_SERVICE:Ljava/lang/String; = "ambient_context"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APPWIDGET_SERVICE:Ljava/lang/String; = "appwidget"

.field public static final APP_BINDING_SERVICE:Ljava/lang/String; = "app_binding"

.field public static final APP_HIBERNATION_SERVICE:Ljava/lang/String; = "app_hibernation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_INTEGRITY_SERVICE:Ljava/lang/String; = "app_integrity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_OPS_SERVICE:Ljava/lang/String; = "appops"

.field public static final APP_PREDICTION_SERVICE:Ljava/lang/String; = "app_prediction"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APP_SEARCH_SERVICE:Ljava/lang/String; = "app_search"

.field public static final ATTENTION_SERVICE:Ljava/lang/String; = "attention"

.field public static final ATTESTATION_VERIFICATION_SERVICE:Ljava/lang/String; = "attestation_verification"

.field public static final AUDIO_DEVICE_VOLUME_SERVICE:Ljava/lang/String; = "audio_device_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUDIO_SERVICE:Ljava/lang/String; = "audio"

.field public static final AUTH_SERVICE:Ljava/lang/String; = "auth"

.field public static final AUTOFILL_MANAGER_SERVICE:Ljava/lang/String; = "autofill"

.field public static final BACKGROUND_INSTALL_CONTROL_SERVICE:Ljava/lang/String; = "background_install_control"

.field public static final BACKUP_SERVICE:Ljava/lang/String; = "backup"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BATTERY_SERVICE:Ljava/lang/String; = "batterymanager"

.field public static final BATTERY_STATS_SERVICE:Ljava/lang/String; = "batterystats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BINARY_TRANSPARENCY_SERVICE:Ljava/lang/String; = "transparency"

.field public static final BIND_ABOVE_CLIENT:I = 0x8

.field public static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_ALLOW_ACTIVITY_STARTS:I = 0x200

.field public static final BIND_ALLOW_BACKGROUND_ACTIVITY_STARTS:I = 0x100000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BIND_ALLOW_FOREGROUND_SERVICE_STARTS_FROM_BACKGROUND:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BIND_ALLOW_INSTANT:I = 0x400000

.field public static final BIND_ALLOW_OOM_MANAGEMENT:I = 0x10

.field public static final BIND_ALLOW_WHITELIST_MANAGEMENT:I = 0x1000000

.field public static final BIND_ALMOST_PERCEPTIBLE:I = 0x10000

.field public static final BIND_AUTO_CREATE:I = 0x1

.field public static final BIND_BYPASS_POWER_NETWORK_RESTRICTIONS:I = 0x20000

.field public static final BIND_BYPASS_USER_NETWORK_RESTRICTIONS:J = 0x100000000L

.field public static final BIND_DEBUG_UNBIND:I = 0x2

.field public static final BIND_EXTERNAL_SERVICE:I = -0x80000000

.field public static final BIND_EXTERNAL_SERVICE_LONG:J = 0x4000000000000000L

.field public static final BIND_FOREGROUND_SERVICE:I = 0x4000000

.field public static final BIND_FOREGROUND_SERVICE_WHILE_AWAKE:I = 0x2000000

.field public static final BIND_IMPORTANT:I = 0x40

.field public static final BIND_IMPORTANT_BACKGROUND:I = 0x800000

.field public static final BIND_INCLUDE_CAPABILITIES:I = 0x1000

.field public static final BIND_NOT_APP_COMPONENT_USAGE:I = 0x8000

.field public static final BIND_NOT_FOREGROUND:I = 0x4

.field public static final BIND_NOT_PERCEPTIBLE:I = 0x100

.field public static final BIND_NOT_VISIBLE:I = 0x40000000

.field public static final BIND_REDUCTION_FLAGS:I = 0x40000130

.field public static final BIND_RESTRICT_ASSOCIATIONS:I = 0x200000

.field public static final BIND_SCHEDULE_LIKE_TOP_APP:I = 0x80000

.field public static final BIND_SHARED_ISOLATED_PROCESS:I = 0x2000

.field public static final BIND_SHOWING_UI:I = 0x20000000

.field public static final BIND_TREAT_LIKE_ACTIVITY:I = 0x8000000

.field public static final BIND_TREAT_LIKE_VISIBLE_FOREGROUND_SERVICE:I = 0x10000000

.field public static final BIND_VISIBLE:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BIND_WAIVE_PRIORITY:I = 0x20

.field public static final BIOMETRIC_SERVICE:Ljava/lang/String; = "biometric"

.field public static final BLOB_STORE_SERVICE:Ljava/lang/String; = "blob_store"

.field public static final BLOCKCHAIN_SERVICE:Ljava/lang/String; = "blockchain"

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final BUGREPORT_SERVICE:Ljava/lang/String; = "bugreport"

.field public static final CAMERA_SERVICE:Ljava/lang/String; = "camera"

.field public static final CAPTIONING_SERVICE:Ljava/lang/String; = "captioning"

.field public static final CARRIER_CONFIG_SERVICE:Ljava/lang/String; = "carrier_config"

.field public static final CFMS_SERVICE:Ljava/lang/String; = "CustomFrequencyManagerService"

.field public static final CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboard"

.field public static final CLOUDSEARCH_SERVICE:Ljava/lang/String; = "cloudsearch"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final COCKTAIL_BAR_SERVICE:Ljava/lang/String; = "CocktailBarService"

.field public static final CODEC_SOLUTION_SERVICE:Ljava/lang/String; = "CodecSolution"

.field public static final COLOR_DISPLAY_SERVICE:Ljava/lang/String; = "color_display"

.field public static final COMPANION_DEVICE_SERVICE:Ljava/lang/String; = "companiondevice"

.field public static final CONNECTIVITY_DIAGNOSTICS_SERVICE:Ljava/lang/String; = "connectivity_diagnostics"

.field public static final CONNECTIVITY_SERVICE:Ljava/lang/String; = "connectivity"

.field public static final CONSUMER_IR_SERVICE:Ljava/lang/String; = "consumer_ir"

.field public static final CONTENT_CAPTURE_MANAGER_SERVICE:Ljava/lang/String; = "content_capture"

.field public static final CONTENT_SUGGESTIONS_SERVICE:Ljava/lang/String; = "content_suggestions"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONTEXTHUB_SERVICE:Ljava/lang/String; = "contexthub"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONTEXT_CREDENTIAL_PROTECTED_STORAGE:I = 0x10

.field public static final CONTEXT_DEVICE_PROTECTED_STORAGE:I = 0x8

.field public static final CONTEXT_IGNORE_SECURITY:I = 0x2

.field public static final CONTEXT_INCLUDE_CODE:I = 0x1

.field public static final CONTEXT_REGISTER_PACKAGE:I = 0x40000000

.field public static final CONTEXT_RESTRICTED:I = 0x4

.field public static final COUNTRY_DETECTOR:Ljava/lang/String; = "country_detector"

.field public static final CREDENTIAL_SERVICE:Ljava/lang/String; = "credential"

.field public static final CROSS_PROFILE_APPS_SERVICE:Ljava/lang/String; = "crossprofileapps"

.field public static final CameraServiceWorker:Ljava/lang/String; = "media.camera.worker"

.field public static final CameraServiceWorker_manager:Ljava/lang/String; = "CameraServiceWorker_manager"

.field public static final DATA_LOADER_MANAGER_SERVICE:Ljava/lang/String; = "dataloader_manager"

.field public static final DEVICE_IDENTIFIERS_SERVICE:Ljava/lang/String; = "device_identifiers"

.field public static final DEVICE_IDLE_CONTROLLER:Ljava/lang/String; = "deviceidle"

.field public static final DEVICE_ID_DEFAULT:I = 0x0

.field public static final DEVICE_ID_INVALID:I = -0x1

.field public static final DEVICE_LOCK_SERVICE:Ljava/lang/String; = "device_lock"

.field public static final DEVICE_POLICY_SERVICE:Ljava/lang/String; = "device_policy"

.field public static final DEVICE_STATE_SERVICE:Ljava/lang/String; = "device_state"

.field public static final DISPLAY_HASH_SERVICE:Ljava/lang/String; = "display_hash"

.field public static final DISPLAY_SERVICE:Ljava/lang/String; = "display"

.field public static final DOMAIN_VERIFICATION_SERVICE:Ljava/lang/String; = "domain_verification"

.field public static final DOWNLOAD_SERVICE:Ljava/lang/String; = "download"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dream"

.field public static final DROPBOX_SERVICE:Ljava/lang/String; = "dropbox"

.field public static final DYNAMIC_SYSTEM_SERVICE:Ljava/lang/String; = "dynamic_system"

.field public static final EPIC_SERVICE:Ljava/lang/String; = "epic"

.field public static final ETHERNET_SERVICE:Ljava/lang/String; = "ethernet"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_CARD_SERVICE:Ljava/lang/String; = "euicc_card"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EUICC_SERVICE:Ljava/lang/String; = "euicc"

.field public static final EXTENDED_ETHERNET_SERVICE:Ljava/lang/String; = "extendedethernetservice"

.field public static final EXYNOS_DISPLAY_SOLUTION_SERVICE:Ljava/lang/String; = "exynos_display"

.field public static final FACE_SERVICE:Ljava/lang/String; = "face"

.field public static final FILE_INTEGRITY_SERVICE:Ljava/lang/String; = "file_integrity"

.field public static final FINGERPRINT_SERVICE:Ljava/lang/String; = "fingerprint"

.field public static final FONT_SERVICE:Ljava/lang/String; = "font"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GAME_SERVICE:Ljava/lang/String; = "game"

.field public static final GATEKEEPER_SERVICE:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field public static final GRAMMATICAL_INFLECTION_SERVICE:Ljava/lang/String; = "grammatical_inflection"

.field public static final HARDWARE_PROPERTIES_SERVICE:Ljava/lang/String; = "hardware_properties"

.field public static final HCM_SERVICE:Ljava/lang/String; = "HcmManagerService"

.field public static final HDMI_CONTROL_SERVICE:Ljava/lang/String; = "hdmi_control"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HEALTHCONNECT_SERVICE:Ljava/lang/String; = "healthconnect"

.field public static final HQM_SERVICE:Ljava/lang/String; = "HqmManagerService"

.field public static final ICCCGRDM_SERVICE:Ljava/lang/String; = "icccgrdm"

.field public static final ICCC_SERVICE:Ljava/lang/String; = "iccc"

.field public static final IDMAP_SERVICE:Ljava/lang/String; = "idmap"

.field public static final INCIDENT_COMPANION_SERVICE:Ljava/lang/String; = "incidentcompanion"

.field public static final INCIDENT_SERVICE:Ljava/lang/String; = "incident"

.field public static final INCREMENTAL_SERVICE:Ljava/lang/String; = "incremental"

.field public static final INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method"

.field public static final INPUT_SERVICE:Ljava/lang/String; = "input"

.field public static final IPSEC_SERVICE:Ljava/lang/String; = "ipsec"

.field public static final IRIS_SERVICE:Ljava/lang/String; = "iris"

.field public static final ISRB_MANAGER_SERVICE:Ljava/lang/String; = "isrb"

.field public static final JOB_SCHEDULER_SERVICE:Ljava/lang/String; = "jobscheduler"

.field public static final KEYGUARD_SERVICE:Ljava/lang/String; = "keyguard"

.field public static final LAUNCHER_APPS_SERVICE:Ljava/lang/String; = "launcherapps"

.field public static final LAYOUT_INFLATER_SERVICE:Ljava/lang/String; = "layout_inflater"

.field public static final LEGACY_PERMISSION_SERVICE:Ljava/lang/String; = "legacy_permission"

.field public static final LIGHTS_SERVICE:Ljava/lang/String; = "lights"

.field public static final LOCALE_SERVICE:Ljava/lang/String; = "locale"

.field public static final LOCATION_SERVICE:Ljava/lang/String; = "location"

.field public static final LOWPAN_SERVICE:Ljava/lang/String; = "lowpan"

.field public static final MEDIA_COMMUNICATION_SERVICE:Ljava/lang/String; = "media_communication"

.field public static final MEDIA_METRICS_SERVICE:Ljava/lang/String; = "media_metrics"

.field public static final MEDIA_PROJECTION_SERVICE:Ljava/lang/String; = "media_projection"

.field public static final MEDIA_ROUTER_SERVICE:Ljava/lang/String; = "media_router"

.field public static final MEDIA_SESSION_SERVICE:Ljava/lang/String; = "media_session"

.field public static final MEDIA_TRANSCODING_SERVICE:Ljava/lang/String; = "media_transcoding"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MIDI_SERVICE:Ljava/lang/String; = "midi"

.field public static final MMS_SERVICE:Ljava/lang/String; = "mms"

.field public static final MOBILE_PAYMENT_SERVICE:Ljava/lang/String; = "mobile_payment"

.field public static final MODE_APPEND:I = 0x8000

.field public static final MODE_ENABLE_WRITE_AHEAD_LOGGING:I = 0x8

.field public static final MODE_MULTI_PROCESS:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final MODE_PRIVATE:I = 0x0

.field public static final MODE_WORLD_READABLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MODE_WORLD_WRITEABLE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MUSIC_RECOGNITION_SERVICE:Ljava/lang/String; = "music_recognition"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NEARBY_SERVICE:Ljava/lang/String; = "nearby"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NETD_SERVICE:Ljava/lang/String; = "netd"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NETWORKMANAGEMENT_SERVICE:Ljava/lang/String; = "network_management"

.field public static final NETWORK_POLICY_SERVICE:Ljava/lang/String; = "netpolicy"

.field public static final NETWORK_SCORE_SERVICE:Ljava/lang/String; = "network_score"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_STACK_SERVICE:Ljava/lang/String; = "network_stack"

.field public static final NETWORK_STATS_SERVICE:Ljava/lang/String; = "netstats"

.field public static final NETWORK_WATCHLIST_SERVICE:Ljava/lang/String; = "network_watchlist"

.field public static final NFC_SERVICE:Ljava/lang/String; = "nfc"

.field public static final NOTIFICATION_SERVICE:Ljava/lang/String; = "notification"

.field public static final NSD_SERVICE:Ljava/lang/String; = "servicediscovery"

.field public static final OEM_LOCK_SERVICE:Ljava/lang/String; = "oem_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OVERLAY_SERVICE:Ljava/lang/String; = "overlay"

.field public static final OVERRIDABLE_COMPONENT_CALLBACKS:J = 0xb84ba9cL

.field public static final PAC_PROXY_SERVICE:Ljava/lang/String; = "pac_proxy"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final PEOPLE_SERVICE:Ljava/lang/String; = "people"

.field public static final PERFORMANCE_HINT_SERVICE:Ljava/lang/String; = "performance_hint"

.field public static final PERMISSION_CHECKER_SERVICE:Ljava/lang/String; = "permission_checker"

.field public static final PERMISSION_CONTROLLER_SERVICE:Ljava/lang/String; = "permission_controller"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERMISSION_ENFORCER_SERVICE:Ljava/lang/String; = "permission_enforcer"

.field public static final PERMISSION_SERVICE:Ljava/lang/String; = "permission"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERSISTENT_DATA_BLOCK_SERVICE:Ljava/lang/String; = "persistent_data_block"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PERSONA_SERVICE:Ljava/lang/String; = "persona"

.field public static final PLATFORM_COMPAT_NATIVE_SERVICE:Ljava/lang/String; = "platform_compat_native"

.field public static final PLATFORM_COMPAT_SERVICE:Ljava/lang/String; = "platform_compat"

.field public static final POWER_EXEMPTION_SERVICE:Ljava/lang/String; = "power_exemption"

.field public static final POWER_SERVICE:Ljava/lang/String; = "power"

.field public static final POWER_STATS_SERVICE:Ljava/lang/String; = "powerstats"

.field public static final POWER_WHITELIST_MANAGER:Ljava/lang/String; = "power_whitelist"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRINT_SERVICE:Ljava/lang/String; = "print"

.field public static final Power_Solution_FrameWork_Service:Ljava/lang/String; = "PowerSolution_Framework_service"

.field public static final RADIO_SERVICE:Ljava/lang/String; = "broadcastradio"

.field public static final RCP_SERVICE:Ljava/lang/String; = "rcp"

.field public static final REBOOT_READINESS_SERVICE:Ljava/lang/String; = "reboot_readiness"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RECEIVER_EXPORTED:I = 0x2

.field public static final RECEIVER_EXPORTED_UNAUDITED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECEIVER_NOT_EXPORTED:I = 0x4

.field public static final RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x1

.field public static final RECOVERY_SERVICE:Ljava/lang/String; = "recovery"

.field public static final REMOTE_PROVISIONING_SERVICE:Ljava/lang/String; = "remote_provisioning"

.field public static final RESOURCES_SERVICE:Ljava/lang/String; = "resources"

.field public static final RESOURCE_ECONOMY_SERVICE:Ljava/lang/String; = "tare"

.field public static final RESTRICTIONS_SERVICE:Ljava/lang/String; = "restrictions"

.field public static final ROLE_SERVICE:Ljava/lang/String; = "role"

.field public static final ROLLBACK_SERVICE:Ljava/lang/String; = "rollback"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROTATION_RESOLVER_SERVICE:Ljava/lang/String; = "resolver"

.field public static final SAFETY_CENTER_SERVICE:Ljava/lang/String; = "safety_center"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SATELLITE_SERVICE:Ljava/lang/String; = "satellite"

.field public static final SCONTEXT_SERVICE:Ljava/lang/String; = "scontext"

.field public static final SEARCH_SERVICE:Ljava/lang/String; = "search"

.field public static final SEARCH_UI_SERVICE:Ljava/lang/String; = "search_ui"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SECURE_ELEMENT_SERVICE:Ljava/lang/String; = "secure_element"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SELECTION_TOOLBAR_SERVICE:Ljava/lang/String; = "selection_toolbar"

.field public static final SEM_ALL_AROUND_SENSING_SERVICE:Ljava/lang/String; = "AAS"

.field public static final SEM_CLIPBOARD_SERVICE:Ljava/lang/String; = "semclipboard"

.field public static final SEM_CONTEXT_SERVICE:Ljava/lang/String; = "scontext"

.field public static final SEM_CONTINUITY_SERVICE:Ljava/lang/String; = "SemContinuityService"

.field public static final SEM_CUSTOM_DUMP_SERVICE:Ljava/lang/String; = "semcustomdump"

.field public static final SEM_DESKTOP_MODE_SERVICE:Ljava/lang/String; = "desktopmode"

.field public static final SEM_DISPLAY_QUALITY_SERVICE:Ljava/lang/String; = "DisplayQuality"

.field public static final SEM_DISPLAY_SOLUTION_SERVICE:Ljava/lang/String; = "DisplaySolution"

.field public static final SEM_EDGE_SERVICE:Ljava/lang/String; = "edge"

.field public static final SEM_EVENT_DELEGATION_SERVICE:Ljava/lang/String; = "semeventdelegator"

.field public static final SEM_EXECUTABLE_SERVICE:Ljava/lang/String; = "execute"

.field public static final SEM_FM_RADIO_SERVICE:Ljava/lang/String; = "FMPlayer"

.field public static final SEM_INPUT_DEVICE_SERVICE:Ljava/lang/String; = "SemInputDeviceManagerService"

.field public static final SEM_LOCATION_SERVICE:Ljava/lang/String; = "sec_location"

.field public static final SEM_MDCONTEXT_SERVICE:Ljava/lang/String; = "mocca"

.field public static final SEM_MDNIE_SERVICE:Ljava/lang/String; = "mDNIe"

.field public static final SEM_MOTION_RECOGNITION_SERVICE:Ljava/lang/String; = "motion_recognition"

.field public static final SEM_MULTI_CONTROL_SERVICE:Ljava/lang/String; = "multicontrol"

.field public static final SEM_PERSONA_SERVICE:Ljava/lang/String; = "persona"

.field public static final SEM_PRIVILEGE_SERVICE:Ljava/lang/String; = "semprivilege"

.field public static final SEM_RCP_SERVICE:Ljava/lang/String; = "rcp"

.field public static final SEM_REMOTE_APP_MODE_SERVICE:Ljava/lang/String; = "remoteappmode"

.field public static final SEM_SPEN_GESTURE_SERVICE:Ljava/lang/String; = "spengestureservice"

.field public static final SEM_STATUS_BAR_SERVICE:Ljava/lang/String; = "sem_statusbar"

.field public static final SEM_TELECOM_SERVICE:Ljava/lang/String; = "samsung_telecom"

.field public static final SEM_VIDEO_TRANSCODING_SERVICE:Ljava/lang/String; = "SemVideoTranscodingService"

.field public static final SEM_VR_MANAGER_SERVICE:Ljava/lang/String; = "vr"
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation
.end field

.field public static final SEM_WIFI_AWARE_SERVICE:Ljava/lang/String; = "sem_wifi_aware"

.field public static final SEM_WIFI_P2P_SERVICE:Ljava/lang/String; = "sem_wifi_p2p"

.field public static final SEM_WIFI_SERVICE:Ljava/lang/String; = "sem_wifi"

.field public static final SENSOR_PRIVACY_SERVICE:Ljava/lang/String; = "sensor_privacy"

.field public static final SENSOR_SERVICE:Ljava/lang/String; = "sensor"

.field public static final SEP_UNION_SERVICE:Ljava/lang/String; = "sepunion"

.field public static final SERIAL_SERVICE:Ljava/lang/String; = "serial"

.field public static final SHARED_CONNECTIVITY_SERVICE:Ljava/lang/String; = "shared_connectivity"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SHORTCUT_SERVICE:Ljava/lang/String; = "shortcut"

.field public static final SIP_SERVICE:Ljava/lang/String; = "sip"

.field public static final SLICE_SERVICE:Ljava/lang/String; = "slice"

.field public static final SMARTSPACE_SERVICE:Ljava/lang/String; = "smartspace"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SMS_SERVICE:Ljava/lang/String; = "sms"

.field public static final SOUND_TRIGGER_MIDDLEWARE_SERVICE:Ljava/lang/String; = "soundtrigger_middleware"

.field public static final SOUND_TRIGGER_SERVICE:Ljava/lang/String; = "soundtrigger"

.field public static final SPEECH_RECOGNITION_SERVICE:Ljava/lang/String; = "speech_recognition"

.field public static final STATS_BOOTSTRAP_ATOM_SERVICE:Ljava/lang/String; = "statsbootstrap"

.field public static final STATS_COMPANION_SERVICE:Ljava/lang/String; = "statscompanion"

.field public static final STATS_MANAGER:Ljava/lang/String; = "stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STATS_MANAGER_SERVICE:Ljava/lang/String; = "statsmanager"

.field public static final STATUS_BAR_SERVICE:Ljava/lang/String; = "statusbar"

.field public static final STORAGE_SERVICE:Ljava/lang/String; = "storage"

.field public static final STORAGE_STATS_SERVICE:Ljava/lang/String; = "storagestats"

.field public static final SYSTEM_CONFIG_SERVICE:Ljava/lang/String; = "system_config"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_HEALTH_SERVICE:Ljava/lang/String; = "systemhealth"

.field public static final SYSTEM_UPDATE_SERVICE:Ljava/lang/String; = "system_update"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TELECOM_SERVICE:Ljava/lang/String; = "telecom"

.field public static final TELEPHONY_IMS_SERVICE:Ljava/lang/String; = "telephony_ims"

.field public static final TELEPHONY_RCS_MESSAGE_SERVICE:Ljava/lang/String; = "ircsmessage"

.field public static final TELEPHONY_REGISTRY_SERVICE:Ljava/lang/String; = "telephony_registry"

.field public static final TELEPHONY_SERVICE:Ljava/lang/String; = "phone"

.field public static final TELEPHONY_SUBSCRIPTION_SERVICE:Ljava/lang/String; = "telephony_subscription_service"

.field public static final TEST_NETWORK_SERVICE:Ljava/lang/String; = "test_network"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final TETHERING_SERVICE:Ljava/lang/String; = "tethering"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TEXT_CLASSIFICATION_SERVICE:Ljava/lang/String; = "textclassification"

.field public static final TEXT_SERVICES_MANAGER_SERVICE:Ljava/lang/String; = "textservices"

.field public static final TEXT_TO_SPEECH_MANAGER_SERVICE:Ljava/lang/String; = "texttospeech"

.field public static final THERMAL_SERVICE:Ljava/lang/String; = "thermalservice"

.field public static final TIME_DETECTOR_SERVICE:Ljava/lang/String; = "time_detector"

.field public static final TIME_MANAGER_SERVICE:Ljava/lang/String; = "time_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TIME_ZONE_DETECTOR_SERVICE:Ljava/lang/String; = "time_zone_detector"

.field public static final TRANSLATION_MANAGER_SERVICE:Ljava/lang/String; = "translation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final TRUST_SERVICE:Ljava/lang/String; = "trust"

.field public static final TV_INPUT_SERVICE:Ljava/lang/String; = "tv_input"

.field public static final TV_INTERACTIVE_APP_SERVICE:Ljava/lang/String; = "tv_interactive_app"

.field public static final TV_TUNER_RESOURCE_MGR_SERVICE:Ljava/lang/String; = "tv_tuner_resource_mgr"

.field public static final UI_MODE_SERVICE:Ljava/lang/String; = "uimode"

.field public static final UI_TRANSLATION_SERVICE:Ljava/lang/String; = "ui_translation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UPDATE_LOCK_SERVICE:Ljava/lang/String; = "updatelock"

.field public static final URI_GRANTS_SERVICE:Ljava/lang/String; = "uri_grants"

.field public static final URSP_SERVICE:Ljava/lang/String; = "urspservice"

.field public static final USAGE_STATS_SERVICE:Ljava/lang/String; = "usagestats"

.field public static final USB_SERVICE:Ljava/lang/String; = "usb"

.field public static final USER_SERVICE:Ljava/lang/String; = "user"

.field public static final UWB_SERVICE:Ljava/lang/String; = "uwb"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VCN_MANAGEMENT_SERVICE:Ljava/lang/String; = "vcn_management"

.field public static final VIBRATOR_MANAGER_SERVICE:Ljava/lang/String; = "vibrator_manager"

.field public static final VIBRATOR_SERVICE:Ljava/lang/String; = "vibrator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIRTUALIZATION_SERVICE:Ljava/lang/String; = "virtualization"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VIRTUAL_DEVICE_SERVICE:Ljava/lang/String; = "virtualdevice"

.field public static final VOICE_INTERACTION_MANAGER_SERVICE:Ljava/lang/String; = "voiceinteraction"

.field public static final VPN_MANAGEMENT_SERVICE:Ljava/lang/String; = "vpn_management"

.field public static final VR_SERVICE:Ljava/lang/String; = "vrmanager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WALLPAPER_EFFECTS_GENERATION_SERVICE:Ljava/lang/String; = "wallpaper_effects_generation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WALLPAPER_SERVICE:Ljava/lang/String; = "wallpaper"

.field public static final WEARABLE_SENSING_SERVICE:Ljava/lang/String; = "wearable_sensing"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_AWARE_SERVICE:Ljava/lang/String; = "wifiaware"

.field public static final WIFI_NL80211_SERVICE:Ljava/lang/String; = "wifinl80211"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_P2P_SERVICE:Ljava/lang/String; = "wifip2p"

.field public static final WIFI_RTT_RANGING_SERVICE:Ljava/lang/String; = "wifirtt"

.field public static final WIFI_RTT_SERVICE:Ljava/lang/String; = "rttmanager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SCANNING_SERVICE:Ljava/lang/String; = "wifiscanner"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WIFI_SERVICE:Ljava/lang/String; = "wifi"

.field public static final WINDOW_SERVICE:Ljava/lang/String; = "window"

.field private static sLastAutofillId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 830
    const/4 v0, -0x1

    sput v0, Landroid/content/Context;->sLastAutofillId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToken(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 8293
    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_f

    .line 8294
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    .line 8293
    :goto_f
    return-object v0
.end method

.method private hidden_createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7628
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public assertRuntimeOverlayThemable()V
    .registers 3

    .line 8400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 8404
    return-void

    .line 8401
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-UI context used to display UI; get a UI context from ActivityThread#getSystemUiContext()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 3890
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindIsolatedService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 3900
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 3842
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 3852
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;

    .line 3821
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 3977
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 3945
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/Handler;Landroid/os/UserHandle;)Z
    .registers 8
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 3993
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # Landroid/content/Context$BindServiceFlags;
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 3961
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract canLoadUnsafeResources()Z
.end method

.method public canStartActivityForResult()Z
    .registers 2

    .line 2202
    const/4 v0, 0x0

    return v0
.end method

.method public abstract checkCallingOrSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
.end method

.method public checkCallingOrSelfUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 7256
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract checkCallingPermission(Ljava/lang/String;)I
.end method

.method public abstract checkCallingUriPermission(Landroid/net/Uri;I)I
.end method

.method public checkCallingUriPermissions(Ljava/util/List;I)[I
    .registers 5
    .param p2, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;I)[I"
        }
    .end annotation

    .line 7214
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract checkPermission(Ljava/lang/String;II)I
.end method

.method public abstract checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I
.end method

.method public abstract checkSelfPermission(Ljava/lang/String;)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;III)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I
.end method

.method public abstract checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
.end method

.method public checkUriPermissions(Ljava/util/List;III)[I
    .registers 7
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;III)[I"
        }
    .end annotation

    .line 7159
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract clearWallpaper()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public closeSystemDialogs()V
    .registers 3

    .line 8471
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public createAttributionContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 7976
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
.end method

.method public createContext(Landroid/content/ContextParams;)Landroid/content/Context;
    .registers 4
    .param p1, "contextParams"    # Landroid/content/ContextParams;

    .line 7961
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 7659
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_5

    .line 7662
    return-object p0

    .line 7660
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createContextAsUser not overridden!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createContextForSdkInSandbox(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    .registers 5
    .param p1, "sdkInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7692
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createContextForSplit(Ljava/lang/String;)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract createCredentialProtectedStorageContext()Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public createDeviceContext(I)Landroid/content/Context;
    .registers 4
    .param p1, "deviceId"    # I

    .line 7805
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createDeviceProtectedStorageContext()Landroid/content/Context;
.end method

.method public abstract createDisplayContext(Landroid/view/Display;)Landroid/content/Context;
.end method

.method public createFeatureContext(Ljava/lang/String;)Landroid/content/Context;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7985
    new-instance v0, Landroid/content/ContextParams$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    .line 7986
    invoke-virtual {v0, p1}, Landroid/content/ContextParams$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/content/ContextParams$Builder;

    move-result-object v0

    .line 7987
    invoke-virtual {v0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v0

    .line 7985
    invoke-virtual {p0, v0}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public abstract createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7614
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_5

    .line 7617
    return-object p0

    .line 7615
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "createPackageContextAsUser not overridden!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "display"    # Landroid/view/Display;

    .line 8061
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 5
    .param p1, "type"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 7918
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;
    .registers 6
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "type"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .line 7948
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract databaseList()[Ljava/lang/String;
.end method

.method public abstract deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract deleteFile(Ljava/lang/String;)Z
.end method

.method public abstract deleteSharedPreferences(Ljava/lang/String;)Z
.end method

.method public destroy()V
    .registers 1

    .line 8440
    return-void
.end method

.method public abstract enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
.end method

.method public abstract enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
.end method

.method public abstract enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
.end method

.method public abstract fileList()[Ljava/lang/String;
.end method

.method public getActivityToken()Landroid/os/IBinder;
    .registers 3

    .line 8267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
.end method

.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getAssets()Landroid/content/res/AssetManager;
.end method

.method public getAssociatedDisplayId()I
    .registers 3

    .line 8121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 1094
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 1085
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    .line 8334
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutofillOptions()Landroid/content/AutofillOptions;
    .registers 2

    .line 8364
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getBasePackageName()Ljava/lang/String;
.end method

.method public abstract getCacheDir()Ljava/io/File;
.end method

.method public abstract getClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract getCodeCacheDir()Ljava/io/File;
.end method

.method public final getColor(I)I
    .registers 4
    .param p1, "id"    # I

    .line 936
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public final getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 4
    .param p1, "id"    # I

    .line 968
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    .registers 2

    .line 8348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentCaptureOptions()Landroid/content/ContentCaptureOptions;
    .registers 2

    .line 8381
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public getCrateDir(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "crateId"    # Ljava/lang/String;

    .line 1375
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDataDir()Ljava/io/File;
.end method

.method public abstract getDatabasePath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public getDeviceId()I
    .registers 3

    .line 8183
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDir(Ljava/lang/String;I)Ljava/io/File;
.end method

.method public getDisplay()Landroid/view/Display;
    .registers 3

    .line 8087
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;
.end method

.method public abstract getDisplayId()I
.end method

.method public getDisplayNoVerify()Landroid/view/Display;
    .registers 3

    .line 8098
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "id"    # I

    .line 952
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public abstract getExternalCacheDir()Ljava/io/File;
.end method

.method public abstract getExternalCacheDirs()[Ljava/io/File;
.end method

.method public abstract getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
.end method

.method public abstract getExternalMediaDirs()[Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getFeatureId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getFilesDir()Ljava/io/File;
.end method

.method public getIApplicationThread()Landroid/app/IApplicationThread;
    .registers 3

    .line 8310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMainExecutor()Ljava/util/concurrent/Executor;
    .registers 4

    .line 799
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public abstract getMainLooper()Landroid/os/Looper;
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .registers 3

    .line 8327
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextAutofillId()I
    .registers 3

    .line 843
    sget v0, Landroid/content/Context;->sLastAutofillId:I

    const v1, 0x3ffffffe    # 1.9999998f

    if-ne v0, v1, :cond_a

    .line 844
    const/4 v0, -0x1

    sput v0, Landroid/content/Context;->sLastAutofillId:I

    .line 847
    :cond_a
    sget v0, Landroid/content/Context;->sLastAutofillId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/content/Context;->sLastAutofillId:I

    .line 849
    return v0
.end method

.method public abstract getNoBackupFilesDir()Ljava/io/File;
.end method

.method public abstract getObbDir()Ljava/io/File;
.end method

.method public abstract getObbDirs()[Ljava/io/File;
.end method

.method public getOpPackageName()Ljava/lang/String;
    .registers 3

    .line 1074
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageCodePath()Ljava/lang/String;
.end method

.method public abstract getPackageManager()Landroid/content/pm/PackageManager;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPackageResourcePath()Ljava/lang/String;
.end method

.method public getParams()Landroid/content/ContextParams;
    .registers 2

    .line 1111
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPreloadsFileCache()Ljava/io/File;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public getProcessToken()Landroid/os/IBinder;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 8320
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;J)Landroid/app/IServiceConnection;
    .registers 7
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "flags"    # J

    .line 8303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
.end method

.method public abstract getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1148
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "resId"    # I

    .line 904
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "resId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4437
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 4438
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public abstract getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "resId"    # I

    .line 891
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTheme()Landroid/content/res/Resources$Theme;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
    .end annotation
.end method

.method public getThemeResId()I
    .registers 2

    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 7720
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .line 7730
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public abstract getWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumHeight()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getWallpaperDesiredMinimumWidth()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getWindowContextToken()Landroid/os/IBinder;
    .registers 3

    .line 8279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public final isAutofillCompatibilityEnabled()Z
    .registers 3

    .line 8355
    invoke-virtual {p0}, Landroid/content/Context;->getAutofillOptions()Landroid/content/AutofillOptions;

    move-result-object v0

    .line 8356
    .local v0, "options":Landroid/content/AutofillOptions;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Landroid/content/AutofillOptions;->compatModeEnabled:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isConfigurationContext()Z
    .registers 3

    .line 8460
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isCredentialProtectedStorage()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract isDeviceProtectedStorage()Z
.end method

.method public isRestricted()Z
    .registers 2

    .line 8230
    const/4 v0, 0x0

    return v0
.end method

.method public isUiContext()Z
    .registers 3

    .line 8428
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public final obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .registers 4
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1016
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .line 1029
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 6
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 1043
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public final obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .registers 3
    .param p1, "attrs"    # [I

    .line 1003
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
.end method

.method public abstract peekWallpaper()Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 872
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 873
    return-void
.end method

.method public registerDeviceIdChangeListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Ljava/util/function/IntConsumer;

    .line 8206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
.end method

.method public abstract registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
.end method

.method public abstract registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
.end method

.method public registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3419
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3461
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract reloadSharedPreferences()V
.end method

.method public abstract removeStickyBroadcast(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public revokeSelfPermissionOnKill(Ljava/lang/String;)V
    .registers 3
    .param p1, "permName"    # Ljava/lang/String;

    .line 7376
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->revokeSelfPermissionsOnKill(Ljava/util/Collection;)V

    .line 7377
    return-void
.end method

.method public revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7412
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/AbstractMethodError;

    const-string v1, "Must be overridden in implementing class"

    invoke-direct {v0, v1}, Ljava/lang/AbstractMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract revokeUriPermission(Landroid/net/Uri;I)V
.end method

.method public abstract revokeUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
.end method

.method public semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 8580
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public semCreatePackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 7645
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;

    .line 8488
    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .registers 8
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "broadcastPermission"    # Ljava/lang/String;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "flags"    # I

    .line 8529
    invoke-virtual/range {p0 .. p6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 8549
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;Ljava/lang/String;I)V
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2577
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V
.end method

.method public abstract sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 2403
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/app/BroadcastOptions;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2480
    nop

    .line 2481
    if-nez p3, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 2480
    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2482
    return-void
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;

    .line 2414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2415
    return-void
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;

    .line 2426
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V

    .line 2428
    return-void
.end method

.method public sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/BroadcastOptions;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;
    .param p3, "excludedPermissions"    # [Ljava/lang/String;
    .param p4, "excludedPackages"    # [Ljava/lang/String;
    .param p5, "options"    # Landroid/app/BroadcastOptions;

    .line 2439
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract sendBroadcastMultiplePermissionsAsUser(Landroid/content/Intent;[Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public sendBroadcastWithMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermissions"    # [Ljava/lang/String;

    .line 2517
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 2518
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialCode"    # I
    .param p3, "receiverPermission"    # Ljava/lang/String;
    .param p4, "receiverAppOp"    # Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "scheduler"    # Landroid/os/Handler;
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;
    .param p9, "options"    # Landroid/os/Bundle;

    .line 2963
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 2636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 2730
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;
    .param p3, "receiverAppOp"    # Ljava/lang/String;
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p5, "scheduler"    # Landroid/os/Handler;
    .param p6, "initialCode"    # I
    .param p7, "initialData"    # Ljava/lang/String;
    .param p8, "initialExtras"    # Landroid/os/Bundle;

    .line 2920
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendStickyBroadcast(Landroid/content/Intent;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3018
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendStickyOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setAutofillClient(Landroid/view/autofill/AutofillManager$AutofillClient;)V
    .registers 2
    .param p1, "client"    # Landroid/view/autofill/AutofillManager$AutofillClient;

    .line 8341
    return-void
.end method

.method public setAutofillOptions(Landroid/content/AutofillOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/AutofillOptions;

    .line 8372
    return-void
.end method

.method public setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/content/ContentCaptureOptions;

    .line 8390
    return-void
.end method

.method public abstract setTheme(I)V
.end method

.method public abstract setWallpaper(Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setWallpaper(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract startActivities([Landroid/content/Intent;)V
.end method

.method public abstract startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)I
    .registers 6
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 2276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2172
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 2191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method is only implemented for Activity-based Contexts. Check canStartActivityForResult() before calling."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation
.end method

.method public abstract startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end method

.method public abstract startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract stopService(Landroid/content/Intent;)Z
.end method

.method public abstract stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
.end method

.method public abstract unbindService(Landroid/content/ServiceConnection;)V
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/ComponentCallbacks;

    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 881
    return-void
.end method

.method public unregisterDeviceIdChangeListener(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "listener"    # Ljava/util/function/IntConsumer;

    .line 8219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method

.method public updateDeviceId(I)V
    .registers 4
    .param p1, "deviceId"    # I

    .line 8148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract updateDisplay(I)V
.end method

.method public updateServiceGroup(Landroid/content/ServiceConnection;II)V
    .registers 6
    .param p1, "conn"    # Landroid/content/ServiceConnection;
    .param p2, "group"    # I
    .param p3, "importance"    # I

    .line 4031
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
