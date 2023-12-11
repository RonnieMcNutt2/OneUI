.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyStatusListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMixStateUpdate(Landroid/media/audiopolicy/AudioMix;)V
    .registers 2
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .line 904
    return-void
.end method

.method public onStatusChange()V
    .registers 1

    .line 903
    return-void
.end method
