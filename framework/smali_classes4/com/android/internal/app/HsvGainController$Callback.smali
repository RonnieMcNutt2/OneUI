.class public interface abstract Lcom/android/internal/app/HsvGainController$Callback;
.super Ljava/lang/Object;
.source "HsvGainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HsvGainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .line 290
    return-void
.end method

.method public onHsvGainHueLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 297
    return-void
.end method

.method public onHsvGainSatLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 304
    return-void
.end method

.method public onHsvGainValLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 311
    return-void
.end method
