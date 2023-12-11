.class public interface abstract Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceStateCallback"
.end annotation


# virtual methods
.method public onBaseStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 228
    return-void
.end method

.method public abstract onStateChanged(I)V
.end method

.method public onSupportedStatesChanged([I)V
    .registers 2
    .param p1, "supportedStates"    # [I

    .line 213
    return-void
.end method
