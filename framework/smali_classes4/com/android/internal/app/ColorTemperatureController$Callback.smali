.class public interface abstract Lcom/android/internal/app/ColorTemperatureController$Callback;
.super Ljava/lang/Object;
.source "ColorTemperatureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ColorTemperatureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .line 221
    return-void
.end method

.method public onColorTempLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 228
    return-void
.end method
