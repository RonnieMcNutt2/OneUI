.class public final Landroid/telephony/CarrierConfigManager$Wifi;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wifi"
.end annotation


# static fields
.field public static final KEY_AVOID_5GHZ_SOFTAP_FOR_LAA_BOOL:Ljava/lang/String; = "wifi.avoid_5ghz_softap_for_laa_bool"

.field public static final KEY_AVOID_5GHZ_WIFI_DIRECT_FOR_LAA_BOOL:Ljava/lang/String; = "wifi.avoid_5ghz_wifi_direct_for_laa_bool"

.field public static final KEY_HOTSPOT_MAX_CLIENT_COUNT:Ljava/lang/String; = "wifi.hotspot_maximum_client_count"

.field public static final KEY_PREFIX:Ljava/lang/String; = "wifi."

.field public static final KEY_SUGGESTION_SSID_LIST_WITH_MAC_RANDOMIZATION_DISABLED:Ljava/lang/String; = "wifi.suggestion_ssid_list_with_mac_randomization_disabled"


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$Wifi;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 10569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaults()Landroid/os/PersistableBundle;
    .registers 4

    .line 10559
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 10560
    .local v0, "defaults":Landroid/os/PersistableBundle;
    const-string/jumbo v1, "wifi.hotspot_maximum_client_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 10561
    const-string/jumbo v1, "wifi.suggestion_ssid_list_with_mac_randomization_disabled"

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10563
    const-string/jumbo v1, "wifi.avoid_5ghz_softap_for_laa_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10564
    const-string/jumbo v1, "wifi.avoid_5ghz_wifi_direct_for_laa_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10566
    return-object v0
.end method
