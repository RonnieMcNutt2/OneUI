.class public abstract Landroid/service/voice/AlwaysOnHotwordDetector$Callback;
.super Ljava/lang/Object;
.source "AlwaysOnHotwordDetector.java"

# interfaces
.implements Landroid/service/voice/HotwordDetector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/AlwaysOnHotwordDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAvailabilityChanged(I)V
.end method

.method public abstract onDetected(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;)V
.end method

.method public abstract onError()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onFailure(Landroid/service/voice/SoundTriggerFailure;)V
    .registers 2
    .param p1, "soundTriggerFailure"    # Landroid/service/voice/SoundTriggerFailure;

    .line 820
    invoke-virtual {p0}, Landroid/service/voice/AlwaysOnHotwordDetector$Callback;->onError()V

    .line 821
    return-void
.end method

.method public onHotwordDetectionServiceInitialized(I)V
    .registers 2
    .param p1, "status"    # I

    .line 835
    return-void
.end method

.method public onHotwordDetectionServiceRestarted()V
    .registers 1

    .line 839
    return-void
.end method

.method public abstract onRecognitionPaused()V
.end method

.method public abstract onRecognitionResumed()V
.end method

.method public onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .registers 2
    .param p1, "result"    # Landroid/service/voice/HotwordRejectedResult;

    .line 831
    return-void
.end method
