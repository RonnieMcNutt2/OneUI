.class public interface abstract Landroid/app/ActivityManagerInternal$AppBackgroundRestrictionListener;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppBackgroundRestrictionListener"
.end annotation


# virtual methods
.method public onAutoRestrictedBucketFeatureFlagChanged(Z)V
    .registers 2
    .param p1, "autoRestrictedBucket"    # Z

    .line 1057
    return-void
.end method

.method public onRestrictionLevelChanged(ILjava/lang/String;I)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newLevel"    # I

    .line 1050
    return-void
.end method
