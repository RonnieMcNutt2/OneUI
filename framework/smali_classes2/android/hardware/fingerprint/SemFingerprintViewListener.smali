.class public interface abstract Landroid/hardware/fingerprint/SemFingerprintViewListener;
.super Ljava/lang/Object;
.source "SemFingerprintViewListener.java"


# static fields
.field public static final EVT_AUTHENTICATION_SUCCEEDED:I = 0x64

.field public static final EVT_DISMISS:I = 0x3

.field public static final EVT_SHOW:I = 0x2

.field public static final EVT_STARTED:I = 0x0

.field public static final EVT_STOPPED:I = 0x1


# virtual methods
.method public onAuthenticationSucceeded()V
    .registers 1

    .line 38
    return-void
.end method

.method public abstract onDismiss()V
.end method

.method public onEvent(I)V
    .registers 2
    .param p1, "event"    # I

    .line 42
    return-void
.end method

.method public abstract onShow()V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStopped()V
.end method
