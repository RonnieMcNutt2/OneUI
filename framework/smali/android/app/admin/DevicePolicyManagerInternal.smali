.class public abstract Landroid/app/admin/DevicePolicyManagerInternal;
.super Ljava/lang/Object;
.source "DevicePolicyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
.end method

.method public abstract broadcastIntentToManifestReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Z)V
.end method

.method public abstract canSilentlyInstallPackage(Ljava/lang/String;I)Z
.end method

.method public abstract createShowAdminSupportIntent(IZ)Landroid/content/Intent;
.end method

.method public abstract createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract enforcePermission(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract getAllCrossProfilePackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationRestrictionsPerAdminForUser(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrossProfileWidgetProviders(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultCrossProfilePackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceOwnerUserId()I
.end method

.method protected abstract getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
.end method

.method protected abstract getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
.end method

.method public abstract getPackagesSuspendedByAdmin(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
.end method

.method public abstract getProfileOwnerAsUser(I)Landroid/content/ComponentName;
.end method

.method public abstract getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;
.end method

.method public abstract getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasPermission(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract isActiveDeviceOwner(I)Z
.end method

.method public abstract isActiveProfileOwner(I)Z
.end method

.method public abstract isActiveSupervisionApp(I)Z
.end method

.method public abstract isApplicationExemptionsFlagEnabled()Z
.end method

.method public abstract isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z
.end method

.method public abstract isKeepProfilesRunningEnabled()Z
.end method

.method public abstract isUserAffiliatedWithDevice(I)Z
.end method

.method public abstract isUserOrganizationManaged(I)Z
.end method

.method public abstract notifyChangesOnWifiPolicy()V
.end method

.method public abstract reportSeparateProfileChallengeChanged(I)V
.end method

.method public abstract resetOp(ILjava/lang/String;I)V
.end method

.method public abstract setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V
.end method

.method public abstract setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V
.end method

.method public abstract supportsResetOp(I)Z
.end method
