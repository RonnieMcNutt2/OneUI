.class public interface abstract Lcom/android/internal/app/EyeTemperatureController$Callback;
.super Ljava/lang/Object;
.source "EyeTemperatureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/EyeTemperatureController;
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

.method public onLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 228
    return-void
.end method
