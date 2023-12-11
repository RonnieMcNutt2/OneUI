.class public interface abstract Landroid/media/tv/tuner/frontend/ScanCallback;
.super Ljava/lang/Object;
.source "ScanCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract onAnalogSifStandardReported(I)V
.end method

.method public abstract onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
.end method

.method public onDvbcAnnexReported(I)V
    .registers 2
    .param p1, "dvbcAnnex"    # I

    .line 99
    return-void
.end method

.method public abstract onDvbsStandardReported(I)V
.end method

.method public onDvbtCellIdsReported([I)V
    .registers 2
    .param p1, "dvbtCellIds"    # [I

    .line 102
    return-void
.end method

.method public abstract onDvbtStandardReported(I)V
.end method

.method public onFrequenciesLongReported([J)V
    .registers 6
    .param p1, "frequencies"    # [J

    .line 55
    array-length v0, p1

    new-array v0, v0, [I

    .line 56
    .local v0, "intFrequencies":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_f

    .line 57
    aget-wide v2, p1, v1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 59
    .end local v1    # "i":I
    :cond_f
    invoke-interface {p0, v0}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesReported([I)V

    .line 60
    return-void
.end method

.method public abstract onFrequenciesReported([I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onGroupIdsReported([I)V
.end method

.method public abstract onHierarchyReported(I)V
.end method

.method public abstract onInputStreamIdsReported([I)V
.end method

.method public abstract onLocked()V
.end method

.method public onModulationReported(I)V
    .registers 2
    .param p1, "modulation"    # I

    .line 93
    return-void
.end method

.method public abstract onPlpIdsReported([I)V
.end method

.method public onPriorityReported(Z)V
    .registers 2
    .param p1, "isHighPriority"    # Z

    .line 96
    return-void
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onScanStopped()V
.end method

.method public abstract onSignalTypeReported(I)V
.end method

.method public abstract onSymbolRatesReported([I)V
.end method

.method public onUnlocked()V
    .registers 1

    .line 40
    return-void
.end method
