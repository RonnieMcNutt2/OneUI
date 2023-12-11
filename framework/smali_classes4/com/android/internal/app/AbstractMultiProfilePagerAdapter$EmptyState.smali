.class public interface abstract Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EmptyState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$TabControl;,
        Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    }
.end annotation


# virtual methods
.method public getButtonClickListener()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$EmptyState$ClickListener;
    .registers 2

    .line 570
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .line 563
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 557
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEmptyStateShown()V
    .registers 1

    .line 587
    return-void
.end method

.method public shouldSkipDataRebuild()Z
    .registers 2

    .line 582
    const/4 v0, 0x0

    return v0
.end method

.method public useDefaultEmptyView()Z
    .registers 2

    .line 576
    const/4 v0, 0x0

    return v0
.end method
