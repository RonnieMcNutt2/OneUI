.class public Landroid/hardware/display/SemWifiDisplayParameter;
.super Ljava/lang/Object;
.source "SemWifiDisplayParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/SemWifiDisplayParameter;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplayParameter;

.field public static final GET_PARAMETER:Ljava/lang/String; = "getparams"

.field public static final INIT_PARAMETER:Ljava/lang/String; = "initparams"

.field public static final KEY_DMR_SUPPORT:Ljava/lang/String; = "wfd_sec_dmr_support"

.field public static final KEY_DMR_SUPPORT_TYPE:Ljava/lang/String; = "wfd_sec_dmr_support_type"

.field public static final KEY_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final KEY_HIGH_RESOLUTION_MODE:Ljava/lang/String; = "high_resolution_mode"

.field public static final KEY_LOW_LATENCY_MODE:Ljava/lang/String; = "wfd_sec_low_latency_mode"

.field public static final KEY_MIRRORING_MODE:Ljava/lang/String; = "wfd_sec_mirroring_mode"

.field public static final KEY_MIRRORING_UUID:Ljava/lang/String; = "wfd_sec_mirroring_uuid"

.field public static final KEY_POINTER_ICON_INDEX:Ljava/lang/String; = "wfd_sec_pointer_icon_idx"

.field public static final KEY_SCAMBLE_SUPPORT:Ljava/lang/String; = "scramble_support"

.field public static final KEY_SOURCE_DISPLAY_ORIENTATION:Ljava/lang/String; = "wfd_sec_source_display_orientation"

.field public static final KEY_TIZEN_VERSION:Ljava/lang/String; = "tizenVer"

.field public static final KEY_TV_BLE_MAC:Ljava/lang/String; = "wfd_sec_tv_ble_mac"

.field public static final KEY_TV_DEVICE_ID:Ljava/lang/String; = "tv_device_id"

.field public static final KEY_VIEW_MODE:Ljava/lang/String; = "wfd_sec_view_mode"

.field public static final KEY_VOIP_MODE:Ljava/lang/String; = "wfd_sec_voip_mode"

.field public static final KEY_WIRELESS_DEX_SUPPORT:Ljava/lang/String; = "wfd_sec_wirelessdex_support"

.field public static final SET_PARAMETER:Ljava/lang/String; = "setparams"

.field private static final TAG:Ljava/lang/String; = "SemWifiDisplayParameter"

.field public static final VALUE_DISABLE:Ljava/lang/String; = "disable"

.field public static final VALUE_DMR_SUPPORT_TYPE_IMAGE:Ljava/lang/String; = "image"

.field public static final VALUE_DMR_SUPPORT_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final VALUE_DMR_SUPPORT_TYPE_VIDEO_HEVC_SUPER_SLOW_MOTION:Ljava/lang/String; = "video_hevc_super_slow_motion"

.field public static final VALUE_ENABLE:Ljava/lang/String; = "enable"

.field public static final VALUE_MIRRORING_MODE_DEX:Ljava/lang/String; = "dex"

.field public static final VALUE_MIRRORING_MODE_MIRRORING:Ljava/lang/String; = "mirroring"

.field public static final VALUE_NO:Ljava/lang/String; = "no"

.field public static final VALUE_NONE:Ljava/lang/String; = "none"

.field public static final VALUE_OFF:Ljava/lang/String; = "off"

.field public static final VALUE_ON:Ljava/lang/String; = "on"

.field public static final VALUE_SOURCE_DISPLAY_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final VALUE_SOURCE_DISPLAY_ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final VALUE_SOURCE_DISPLAY_ORIENTATION_PRESENTATION_OFF:Ljava/lang/String; = "presentation=off"

.field public static final VALUE_SOURCE_DISPLAY_ORIENTATION_PRESENTATION_ON:Ljava/lang/String; = "presentation=on"

.field public static final VALUE_SUPPORT:Ljava/lang/String; = "support"

.field public static final VALUE_VIEW_MODE_FULL:Ljava/lang/String; = "full"

.field public static final VALUE_VIEW_MODE_MULTI:Ljava/lang/String; = "multi"

.field public static final VALUE_YES:Ljava/lang/String; = "yes"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/SemWifiDisplayParameter;

    sput-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplayParameter;

    .line 282
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter$1;

    invoke-direct {v0}, Landroid/hardware/display/SemWifiDisplayParameter$1;-><init>()V

    sput-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 337
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 304
    iput-object p2, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 328
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 329
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 409
    if-eqz p1, :cond_2d

    instance-of v0, p1, Landroid/hardware/display/SemWifiDisplayParameter;

    if-eqz v0, :cond_2d

    .line 410
    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 411
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 413
    :cond_2d
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .line 389
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_11

    move-object v1, v2

    goto :goto_13

    :cond_11
    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string v1, "tv_device_id"

    iget-object v3, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_3f

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 344
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/hardware/display/SemWifiDisplayParameter;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    return-void
.end method
