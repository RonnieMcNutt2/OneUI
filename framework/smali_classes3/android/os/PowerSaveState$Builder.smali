.class public final Landroid/os/PowerSaveState$Builder;
.super Ljava/lang/Object;
.source "PowerSaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBatterySaverEnabled:Z

.field private mBrightnessFactor:F

.field private mGlobalBatterySaverEnabled:Z

.field private mLocationMode:I

.field private mSoundTriggerMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBatterySaverEnabled(Landroid/os/PowerSaveState$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBrightnessFactor(Landroid/os/PowerSaveState$Builder;)F
    .registers 1

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalBatterySaverEnabled(Landroid/os/PowerSaveState$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationMode(Landroid/os/PowerSaveState$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundTriggerMode(Landroid/os/PowerSaveState$Builder;)I
    .registers 1

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mSoundTriggerMode:I

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    .line 74
    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    .line 75
    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    .line 76
    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mSoundTriggerMode:I

    .line 77
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    .line 79
    return-void
.end method


# virtual methods
.method public build()Landroid/os/PowerSaveState;
    .registers 2

    .line 107
    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p0}, Landroid/os/PowerSaveState;-><init>(Landroid/os/PowerSaveState$Builder;)V

    return-object v0
.end method

.method public setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 82
    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    .line 83
    return-object p0
.end method

.method public setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;
    .registers 2
    .param p1, "factor"    # F

    .line 102
    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    .line 103
    return-object p0
.end method

.method public setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 87
    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    .line 88
    return-object p0
.end method

.method public setLocationMode(I)Landroid/os/PowerSaveState$Builder;
    .registers 2
    .param p1, "mode"    # I

    .line 97
    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    .line 98
    return-object p0
.end method

.method public setSoundTriggerMode(I)Landroid/os/PowerSaveState$Builder;
    .registers 2
    .param p1, "mode"    # I

    .line 92
    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mSoundTriggerMode:I

    .line 93
    return-object p0
.end method
