.class public Landroid/media/audiofx/SemHapticGenerator;
.super Landroid/media/audiofx/AudioEffect;
.source "SemHapticGenerator.java"


# static fields
.field public static final EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "SemHapticGenerator"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    nop

    .line 53
    const-string v0, "2d43d8b6-1861-43d9-8eda-11f63bef2233"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

    .line 52
    return-void
.end method

.method private constructor <init>(I)V
    .registers 5
    .param p1, "audioSession"    # I

    .line 97
    sget-object v0, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 98
    return-void
.end method

.method public static create(I)Landroid/media/audiofx/SemHapticGenerator;
    .registers 2
    .param p0, "audioSession"    # I

    .line 83
    new-instance v0, Landroid/media/audiofx/SemHapticGenerator;

    invoke-direct {v0, p0}, Landroid/media/audiofx/SemHapticGenerator;-><init>(I)V

    return-object v0
.end method

.method public static isAvailable()Z
    .registers 1

    .line 62
    invoke-static {}, Landroid/media/AudioManager;->isHapticPlaybackSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Landroid/media/audiofx/SemHapticGenerator;->EFFECT_TYPE_SEC_HAPTIC_GENERATOR:Ljava/util/UUID;

    .line 63
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 62
    :goto_11
    return v0
.end method


# virtual methods
.method public setEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .line 111
    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    .line 112
    .local v0, "ret":I
    return v0
.end method
