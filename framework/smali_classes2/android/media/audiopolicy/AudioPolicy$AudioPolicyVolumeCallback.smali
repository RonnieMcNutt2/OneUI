.class public abstract Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioPolicyVolumeCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeAdjustment(I)V
    .registers 2
    .param p1, "adjustment"    # I

    .line 942
    return-void
.end method
