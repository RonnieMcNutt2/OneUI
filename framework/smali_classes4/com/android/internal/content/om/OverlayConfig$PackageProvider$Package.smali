.class public interface abstract Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Package"
.end annotation


# virtual methods
.method public abstract getBaseApkPath()Ljava/lang/String;
.end method

.method public abstract getOverlayPriority()I
.end method

.method public abstract getOverlayTarget()Ljava/lang/String;
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public abstract isOverlayIsStatic()Z
.end method
