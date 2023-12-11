.class interface abstract Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ResolverListCommunicator"
.end annotation


# virtual methods
.method public abstract getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
.end method

.method public abstract getTargetIntent()Landroid/content/Intent;
.end method

.method public abstract onHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract onPostListReady(Lcom/android/internal/app/ResolverListAdapter;ZZZ)V
.end method

.method public abstract resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract semGetAppIconTheme()Ljava/lang/String;
.end method

.method public abstract semGetOldItemCount()I
.end method

.method public abstract semIsDestroyed()Z
.end method

.method public abstract semIsFinishing()Z
.end method

.method public abstract semIsNeedSortingInRebuildList()Z
.end method

.method public abstract semIsOverlayThemesEnabled()Z
.end method

.method public abstract semIsSupportsAlwaysUseOption()Z
.end method

.method public abstract semNeedSortAfterPinned()Z
.end method

.method public abstract semOnForceHandlePackagesChanged(Lcom/android/internal/app/ResolverListAdapter;)V
.end method

.method public abstract semSetNeedSortAfterPinned(Z)V
.end method

.method public abstract semSetNeedSortingInRebuildList(Z)V
.end method

.method public abstract sendVoiceChoicesIfNeeded()V
.end method

.method public abstract shouldGetActivityMetadata()Z
.end method

.method public shouldGetOnlyDefaultActivities()Z
    .registers 2

    .line 1069
    const/4 v0, 0x1

    return v0
.end method

.method public abstract updateProfileViewButton()V
.end method

.method public abstract useLayoutWithDefault()Z
.end method
