.class public abstract Landroid/hardware/radio/RadioTuner$Callback;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAntennaState(Z)V
    .registers 2
    .param p1, "connected"    # Z

    .line 736
    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .registers 2
    .param p1, "isAvailable"    # Z

    .line 757
    return-void
.end method

.method public onBackgroundScanComplete()V
    .registers 1

    .line 762
    return-void
.end method

.method public onConfigFlagUpdated(IZ)V
    .registers 3
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 781
    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 2
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 706
    return-void
.end method

.method public onControlChanged(Z)V
    .registers 2
    .param p1, "control"    # Z

    .line 748
    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 732
    return-void
.end method

.method public onError(I)V
    .registers 2
    .param p1, "status"    # I

    .line 687
    return-void
.end method

.method public onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V
    .registers 2
    .param p1, "metadata"    # Landroid/hardware/radio/RadioMetadata;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .registers 2
    .param p1, "info"    # Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 715
    return-void
.end method

.method public onProgramListChanged()V
    .registers 1

    .line 769
    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 728
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "selector"    # Landroid/hardware/radio/ProgramSelector;

    .line 696
    return-void
.end method
