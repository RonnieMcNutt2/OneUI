.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;
.super Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
.source "HdmiTimerRecordSources.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Duration"
.end annotation


# direct methods
.method private constructor <init>(II)V
    .registers 3
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;-><init>(II)V

    .line 231
    return-void
.end method

.method synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiTimerRecordSources$Duration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$Duration;-><init>(II)V

    return-void
.end method
