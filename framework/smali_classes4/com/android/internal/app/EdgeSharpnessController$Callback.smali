.class public interface abstract Lcom/android/internal/app/EdgeSharpnessController$Callback;
.super Ljava/lang/Object;
.source "EdgeSharpnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/EdgeSharpnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .line 210
    return-void
.end method

.method public onEdgeSharpnessIntensityLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 217
    return-void
.end method
