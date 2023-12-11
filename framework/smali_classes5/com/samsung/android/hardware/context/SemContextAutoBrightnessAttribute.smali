.class public Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextAutoBrightnessAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_CONFIGURATION:I = 0x1

.field private static final MODE_DEVICE_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContextAutoBrightnessAttribute"


# instance fields
.field private mDeviceMode:I

.field private mLuminanceTable:[B

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "deviceMode"    # I

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 88
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 89
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    .line 91
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 72
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "luminanceTable"    # [B

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 105
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    .line 107
    if-eqz p1, :cond_1e

    .line 108
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    .line 109
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->setAttribute()V

    goto :goto_25

    .line 112
    :cond_1e
    const-string v0, "SemContextAutoBrightnessAttribute"

    const-string v1, "The luminanceTable is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_25
    return-void
.end method

.method private setAttribute()V
    .registers 4

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 139
    const-string/jumbo v1, "luminance_config_data"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_24

    .line 140
    :cond_1b
    if-nez v1, :cond_24

    .line 141
    const-string v1, "device_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    :cond_24
    :goto_24
    const/16 v1, 0x27

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 144
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 6

    .line 122
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mMode:I

    const/4 v1, 0x0

    const-string v2, "SemContextAutoBrightnessAttribute"

    const/4 v3, 0x1

    if-nez v0, :cond_15

    .line 123
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mDeviceMode:I

    if-ltz v0, :cond_f

    const/4 v4, 0x2

    if-le v0, v4, :cond_21

    .line 125
    :cond_f
    const-string v0, "The device mode is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v1

    .line 128
    :cond_15
    if-ne v0, v3, :cond_21

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextAutoBrightnessAttribute;->mLuminanceTable:[B

    if-nez v0, :cond_21

    .line 129
    const-string v0, "The luminance configuration data is null."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v1

    .line 132
    :cond_21
    return v3
.end method
