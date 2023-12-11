.class public interface abstract Landroid/media/soundtrigger/SoundTriggerInstrumentation$GlobalCallback;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GlobalCallback"
.end annotation


# virtual methods
.method public onClientAttached()V
    .registers 1

    .line 106
    return-void
.end method

.method public onClientDetached()V
    .registers 1

    .line 112
    return-void
.end method

.method public onFrameworkDetached()V
    .registers 1

    .line 100
    return-void
.end method

.method public abstract onModelLoaded(Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelSession;)V
.end method

.method public onPreempted()V
    .registers 1

    .line 88
    return-void
.end method

.method public onRestarted()V
    .registers 1

    .line 94
    return-void
.end method
