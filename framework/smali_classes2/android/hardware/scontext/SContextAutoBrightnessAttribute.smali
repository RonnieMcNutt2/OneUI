.class public Landroid/hardware/scontext/SContextAutoBrightnessAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextAutoBrightnessAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static MODE_CONFIGURATION:I = 0x0

.field private static MODE_DEVICE_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextAutoBrightnessAttribute"


# instance fields
.field private mDeviceMode:I

.field private mLuminanceTable:[B

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    .line 32
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 44
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "deviceMode"    # I

    .line 60
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 61
    iput p1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 62
    sget v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 63
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    .line 64
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "luminanceTable"    # [B

    .line 77
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 78
    iput-object p1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 79
    sget v0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    iput v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    .line 80
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->setAttribute()V

    .line 81
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget v1, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    if-ne v1, v2, :cond_1a

    .line 105
    const-string v1, "luminance_config_data"

    iget-object v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_25

    .line 106
    :cond_1a
    sget v2, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    if-ne v1, v2, :cond_25

    .line 107
    const-string v1, "device_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    :cond_25
    :goto_25
    const/16 v1, 0x27

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 110
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 5

    .line 86
    iget v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mMode:I

    sget v1, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_DEVICE_MODE:I

    const/4 v2, 0x0

    const-string v3, "SContextAutoBrightnessAttribute"

    if-ne v0, v1, :cond_16

    .line 87
    iget v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v0, :cond_10

    const/4 v1, 0x2

    if-le v0, v1, :cond_24

    .line 89
    :cond_10
    const-string v0, "The device mode is wrong."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v2

    .line 92
    :cond_16
    sget v1, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->MODE_CONFIGURATION:I

    if-ne v0, v1, :cond_24

    .line 93
    iget-object v0, p0, Landroid/hardware/scontext/SContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v0, :cond_24

    .line 94
    const-string v0, "The luminance configration data is null."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v2

    .line 98
    :cond_24
    const/4 v0, 0x1

    return v0
.end method
