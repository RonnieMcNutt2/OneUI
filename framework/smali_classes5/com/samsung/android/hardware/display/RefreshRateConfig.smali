.class public final Lcom/samsung/android/hardware/display/RefreshRateConfig;
.super Ljava/lang/Object;
.source "RefreshRateConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;,
        Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    }
.end annotation


# static fields
.field private static final PROPERTY_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.ambient_brightness"

.field private static final PROPERTY_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.display_brightness"

.field private static final PROPERTY_SUB_AMBIENT_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.sub_ambient_brightness"

.field private static final PROPERTY_SUB_DISPLAY_BRIGHTNESS:Ljava/lang/String; = "persist.dm.passive.sub_display_brightness"

.field private static final TYPE_SEAMLESS:I = 0x2

.field private static final TYPE_SEAMLESS_PLUS:I = 0x3

.field private static final TYPE_SWITCHABLE:I = 0x1

.field private static sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

.field private static sIsSubScreen:Z

.field private static sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

.field private static sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;


# instance fields
.field private mBrightnessThreshold:Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

.field private final mDisplayType:I

.field mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

.field mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

.field private final mUnsupportedNS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)V
    .registers 6
    .param p1, "typeConfig"    # Ljava/lang/String;
    .param p2, "highSpeedConfig"    # Ljava/lang/String;
    .param p3, "normalSpeedConfig"    # Ljava/lang/String;
    .param p4, "brightnessThreshold"    # Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mUnsupportedNS:Z

    .line 112
    iput-object p4, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mBrightnessThreshold:Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 113
    return-void
.end method

.method public static createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .registers 5
    .param p0, "typeConfig"    # Ljava/lang/String;
    .param p1, "highSpeedConfig"    # Ljava/lang/String;
    .param p2, "normalSpeedConfig"    # Ljava/lang/String;
    .param p3, "brightnessThreshold"    # Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    .line 158
    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/RefreshRateConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)V

    return-object v0
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "isSubScreen"    # Z

    .line 256
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    const-string v1, "RefreshRateConfigs"

    const-string v2, ": "

    const-string v3, "  "

    const-string v4, ""

    if-eqz v0, :cond_115

    if-eqz p2, :cond_115

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SUB_HFR_MODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SUB_HFR_SUPPORTED_REFRESH_RATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SUB_HFR_SUPPORTED_REFRESH_RATE_NS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SUB_SEAMLESS_BRT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz v0, :cond_c3

    .line 267
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    if-eqz v0, :cond_c3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persist.dm.passive.sub_display_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 269
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SUB_SEAMLESS_LUX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz v0, :cond_114

    .line 274
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    if-eqz v0, :cond_114

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persist.dm.passive.sub_ambient_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 276
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    :cond_114
    return-void

    .line 281
    :cond_115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  HFR_DEFAULT_REFRESH_RATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  HFR_MODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  HFR_SUPPORTED_REFRESH_RATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "60,120"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  HFR_SUPPORTED_REFRESH_RATE_NS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SEAMLESS_BRT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz v0, :cond_1ea

    .line 293
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    if-eqz v0, :cond_1ea

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persist.dm.passive.display_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 295
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mDisplayBrightnessProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    :cond_1ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SEAMLESS_LUX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-eqz v0, :cond_23b

    .line 300
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    if-eqz v0, :cond_23b

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persist.dm.passive.ambient_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 302
    invoke-virtual {v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;->mAmbientBrightnessProperties:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    :cond_23b
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .registers 4

    .line 67
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    const-string v1, ""

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsSubScreen:Z

    if-eqz v0, :cond_24

    .line 68
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-nez v0, :cond_21

    .line 69
    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    const-string/jumbo v2, "persist.dm.passive.sub_display_brightness"

    const-string/jumbo v3, "persist.dm.passive.sub_ambient_brightness"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "0"

    invoke-static {v2, v1, v1, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 82
    :cond_21
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sSubInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-object v0

    .line 85
    :cond_24
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    if-nez v0, :cond_3f

    .line 86
    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    const-string/jumbo v2, "persist.dm.passive.display_brightness"

    const-string/jumbo v3, "persist.dm.passive.ambient_brightness"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    const-string v2, "60,120"

    const-string v3, "60"

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->createRefreshRateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;)Lcom/samsung/android/hardware/display/RefreshRateConfig;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 99
    :cond_3f
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sInstance:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    return-object v0
.end method

.method private static isInPrimaryDevice(Landroid/view/DisplayAddress;)Z
    .registers 3
    .param p0, "address"    # Landroid/view/DisplayAddress;

    .line 139
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    if-nez v0, :cond_12

    .line 141
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    move-result-wide v0

    .line 140
    invoke-static {v0, v1}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    .line 143
    :cond_12
    sget-object v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sPrimaryPhysicalDisplayAddress:Landroid/view/DisplayAddress;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSubScreen()Z
    .registers 1

    .line 151
    sget-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsSubScreen:Z

    return v0
.end method

.method public static updateSubScreen(Landroid/view/DisplayAddress;)V
    .registers 2
    .param p0, "address"    # Landroid/view/DisplayAddress;

    .line 147
    invoke-static {p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isInPrimaryDevice(Landroid/view/DisplayAddress;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->sIsSubScreen:Z

    .line 148
    return-void
.end method


# virtual methods
.method public createSupportedRefreshRate(Ljava/lang/String;Z)Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .registers 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "useDefaultRefreshRate"    # Z

    .line 164
    new-instance v0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Ljava/lang/String;ZLcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate-IA;)V

    return-object v0
.end method

.method public getBrightnessThreshold()Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mBrightnessThreshold:Lcom/samsung/android/hardware/display/RefreshRateConfig$BrightnessThreshold;

    return-object v0
.end method

.method public getHighSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mHighSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-object v0
.end method

.method public getNormalSpeedRefreshRates()Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mNormalSpeedRefreshRates:Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;

    return-object v0
.end method

.method public isSeamless()Z
    .registers 3

    .line 120
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isSeamlessPlus()Z
    .registers 3

    .line 124
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isSwitchable()Z
    .registers 3

    .line 116
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mDisplayType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public unsupportedNS()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig;->mUnsupportedNS:Z

    return v0
.end method
