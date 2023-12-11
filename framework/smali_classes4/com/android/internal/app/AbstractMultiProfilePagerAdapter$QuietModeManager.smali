.class public interface abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$QuietModeManager;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QuietModeManager"
.end annotation


# virtual methods
.method public abstract isQuietModeEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract isWaitingToEnableWorkProfile()Z
.end method

.method public abstract markWorkProfileEnabledBroadcastReceived()V
.end method

.method public abstract requestQuietModeEnabled(ZLandroid/os/UserHandle;)V
.end method
