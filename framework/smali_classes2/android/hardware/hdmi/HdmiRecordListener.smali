.class public abstract Landroid/hardware/hdmi/HdmiRecordListener;
.super Ljava/lang/Object;
.source "HdmiRecordListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearTimerRecordingResult(II)V
    .registers 3
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 249
    return-void
.end method

.method public onOneTouchRecordResult(II)V
    .registers 3
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .line 53
    return-void
.end method

.method public abstract onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.end method

.method public onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V
    .registers 3
    .param p1, "recorderAddress"    # I
    .param p2, "data"    # Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    .line 63
    return-void
.end method
