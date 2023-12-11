.class public final Landroid/content/pm/UserProperties$Builder;
.super Ljava/lang/Object;
.source "UserProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/UserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCredentialShareableWithParent:Z

.field private mCrossProfileIntentFilterAccessControl:I

.field private mCrossProfileIntentResolutionStrategy:I

.field private mDeleteAppWithParent:Z

.field private mInheritDevicePolicy:I

.field private mMediaSharedWithParent:Z

.field private mShowInLauncher:I

.field private mShowInSettings:I

.field private mStartWithParent:Z

.field private mUpdateCrossProfileIntentFiltersOnOTA:Z

.field private mUseParentsContacts:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    .line 849
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    .line 850
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    .line 851
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    .line 852
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    .line 853
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 854
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    .line 857
    iput v0, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    .line 859
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    .line 860
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    .line 861
    iput-boolean v0, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/content/pm/UserProperties;
    .registers 15

    .line 931
    new-instance v13, Landroid/content/pm/UserProperties;

    iget v1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    iget-boolean v2, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    iget v3, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    iget v4, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    iget-boolean v5, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    iget-boolean v6, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    iget v7, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    iget v8, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    iget-boolean v9, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    iget-boolean v10, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    iget-boolean v11, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/content/pm/UserProperties;-><init>(IZIIZZIIZZZLandroid/content/pm/UserProperties-IA;)V

    return-object v13
.end method

.method public setCredentialShareableWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "credentialShareableWithParent"    # Z

    .line 919
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mCredentialShareableWithParent:Z

    .line 920
    return-object p0
.end method

.method public setCrossProfileIntentFilterAccessControl(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "crossProfileIntentFilterAccessControl"    # I

    .line 902
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentFilterAccessControl:I

    .line 903
    return-object p0
.end method

.method public setCrossProfileIntentResolutionStrategy(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "crossProfileIntentResolutionStrategy"    # I

    .line 909
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mCrossProfileIntentResolutionStrategy:I

    .line 910
    return-object p0
.end method

.method public setDeleteAppWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "deleteAppWithParent"    # Z

    .line 925
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mDeleteAppWithParent:Z

    .line 926
    return-object p0
.end method

.method public setInheritDevicePolicy(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "inheritRestrictionsDevicePolicy"    # I

    .line 882
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mInheritDevicePolicy:I

    .line 883
    return-object p0
.end method

.method public setMediaSharedWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "mediaSharedWithParent"    # Z

    .line 914
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mMediaSharedWithParent:Z

    .line 915
    return-object p0
.end method

.method public setShowInLauncher(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "showInLauncher"    # I

    .line 864
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInLauncher:I

    .line 865
    return-object p0
.end method

.method public setShowInSettings(I)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "showInSettings"    # I

    .line 875
    iput p1, p0, Landroid/content/pm/UserProperties$Builder;->mShowInSettings:I

    .line 876
    return-object p0
.end method

.method public setStartWithParent(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "startWithParent"    # Z

    .line 869
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mStartWithParent:Z

    .line 870
    return-object p0
.end method

.method public setUpdateCrossProfileIntentFiltersOnOTA(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "updateCrossProfileIntentFiltersOnOTA"    # Z

    .line 894
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 895
    return-object p0
.end method

.method public setUseParentsContacts(Z)Landroid/content/pm/UserProperties$Builder;
    .registers 2
    .param p1, "useParentsContacts"    # Z

    .line 887
    iput-boolean p1, p0, Landroid/content/pm/UserProperties$Builder;->mUseParentsContacts:Z

    .line 888
    return-object p0
.end method
