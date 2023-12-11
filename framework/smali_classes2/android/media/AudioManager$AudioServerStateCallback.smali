.class public abstract Landroid/media/AudioManager$AudioServerStateCallback;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AudioServerStateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioServerDown()V
    .registers 1

    .line 7934
    return-void
.end method

.method public onAudioServerUp()V
    .registers 1

    .line 7935
    return-void
.end method
