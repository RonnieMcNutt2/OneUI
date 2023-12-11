.class public interface abstract Landroid/media/soundtrigger/SoundTriggerInstrumentation$ModelCallback;
.super Ljava/lang/Object;
.source "SoundTriggerInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerInstrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModelCallback"
.end annotation


# virtual methods
.method public onModelUnloaded()V
    .registers 1

    .line 134
    return-void
.end method

.method public onParamSet(II)V
    .registers 3
    .param p1, "param"    # I
    .param p2, "value"    # I

    .line 142
    return-void
.end method

.method public abstract onRecognitionStarted(Landroid/media/soundtrigger/SoundTriggerInstrumentation$RecognitionSession;)V
.end method
