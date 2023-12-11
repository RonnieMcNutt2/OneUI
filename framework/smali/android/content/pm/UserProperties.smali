.class public final Landroid/content/pm/UserProperties;
.super Ljava/lang/Object;
.source "UserProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/UserProperties$Builder;,
        Landroid/content/pm/UserProperties$CrossProfileIntentResolutionStrategy;,
        Landroid/content/pm/UserProperties$CrossProfileIntentFilterAccessControlLevel;,
        Landroid/content/pm/UserProperties$InheritDevicePolicy;,
        Landroid/content/pm/UserProperties$ShowInSettings;,
        Landroid/content/pm/UserProperties$ShowInLauncher;,
        Landroid/content/pm/UserProperties$PropertyIndex;
    }
.end annotation


# static fields
.field private static final ATTR_CREDENTIAL_SHAREABLE_WITH_PARENT:Ljava/lang/String; = "credentialShareableWithParent"

.field private static final ATTR_CROSS_PROFILE_INTENT_FILTER_ACCESS_CONTROL:Ljava/lang/String; = "crossProfileIntentFilterAccessControl"

.field private static final ATTR_CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY:Ljava/lang/String; = "crossProfileIntentResolutionStrategy"

.field private static final ATTR_DELETE_APP_WITH_PARENT:Ljava/lang/String; = "deleteAppWithParent"

.field private static final ATTR_INHERIT_DEVICE_POLICY:Ljava/lang/String; = "inheritDevicePolicy"

.field private static final ATTR_MEDIA_SHARED_WITH_PARENT:Ljava/lang/String; = "mediaSharedWithParent"

.field private static final ATTR_SHOW_IN_LAUNCHER:Ljava/lang/String; = "showInLauncher"

.field private static final ATTR_SHOW_IN_SETTINGS:Ljava/lang/String; = "showInSettings"

.field private static final ATTR_START_WITH_PARENT:Ljava/lang/String; = "startWithParent"

.field private static final ATTR_UPDATE_CROSS_PROFILE_INTENT_FILTERS_ON_OTA:Ljava/lang/String; = "updateCrossProfileIntentFiltersOnOTA"

.field private static final ATTR_USE_PARENTS_CONTACTS:Ljava/lang/String; = "useParentsContacts"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/UserProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_ALL:I = 0x0

.field public static final CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_SYSTEM:I = 0xa

.field public static final CROSS_PROFILE_INTENT_FILTER_ACCESS_LEVEL_SYSTEM_ADD_ONLY:I = 0x14

.field public static final CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY_DEFAULT:I = 0x0

.field public static final CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY_NO_FILTERING:I = 0x1

.field private static final INDEX_CREDENTIAL_SHAREABLE_WITH_PARENT:I = 0x9

.field private static final INDEX_CROSS_PROFILE_INTENT_FILTER_ACCESS_CONTROL:I = 0x6

.field private static final INDEX_CROSS_PROFILE_INTENT_RESOLUTION_STRATEGY:I = 0x7

.field private static final INDEX_DELETE_APP_WITH_PARENT:I = 0xa

.field private static final INDEX_INHERIT_DEVICE_POLICY:I = 0x3

.field private static final INDEX_MEDIA_SHARED_WITH_PARENT:I = 0x8

.field private static final INDEX_SHOW_IN_LAUNCHER:I = 0x0

.field private static final INDEX_SHOW_IN_SETTINGS:I = 0x2

.field private static final INDEX_START_WITH_PARENT:I = 0x1

.field private static final INDEX_UPDATE_CROSS_PROFILE_INTENT_FILTERS_ON_OTA:I = 0x5

.field private static final INDEX_USE_PARENTS_CONTACTS:I = 0x4

.field public static final INHERIT_DEVICE_POLICY_FROM_PARENT:I = 0x1

.field public static final INHERIT_DEVICE_POLICY_NO:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SHOW_IN_LAUNCHER_NO:I = 0x2

.field public static final SHOW_IN_LAUNCHER_SEPARATE:I = 0x1

.field public static final SHOW_IN_LAUNCHER_WITH_PARENT:I = 0x0

.field public static final SHOW_IN_SETTINGS_NO:I = 0x2

.field public static final SHOW_IN_SETTINGS_SEPARATE:I = 0x1

.field public static final SHOW_IN_SETTINGS_WITH_PARENT:I


# instance fields
.field private mCredentialShareableWithParent:Z

.field private mCrossProfileIntentFilterAccessControl:I

.field private mCrossProfileIntentResolutionStrategy:I

.field private final mDefaultProperties:Landroid/content/pm/UserProperties;

.field private mDeleteAppWithParent:Z

.field private mInheritDevicePolicy:I

.field private mMediaSharedWithParent:Z

.field private mPropertiesPresent:J

.field private mShowInLauncher:I

.field private mShowInSettings:I

.field private mStartWithParent:Z

.field private mUpdateCrossProfileIntentFiltersOnOTA:Z

.field private mUseParentsContacts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroid/content/pm/UserProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/UserProperties;->LOG_TAG:Ljava/lang/String;

    .line 831
    new-instance v0, Landroid/content/pm/UserProperties$1;

    invoke-direct {v0}, Landroid/content/pm/UserProperties$1;-><init>()V

    sput-object v0, Landroid/content/pm/UserProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZIIZZIIZZZ)V
    .registers 14
    .param p1, "showInLauncher"    # I
    .param p2, "startWithParent"    # Z
    .param p3, "showInSettings"    # I
    .param p4, "inheritDevicePolicy"    # I
    .param p5, "useParentsContacts"    # Z
    .param p6, "updateCrossProfileIntentFiltersOnOTA"    # Z
    .param p7, "crossProfileIntentFilterAccessControl"    # I
    .param p8, "crossProfileIntentResolutionStrategy"    # I
    .param p9, "mediaSharedWithParent"    # Z
    .param p10, "credentialShareableWithParent"    # Z
    .param p11, "deleteAppWithParent"    # Z

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 958
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 959
    invoke-virtual {p0, p1}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    .line 960
    invoke-virtual {p0, p2}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    .line 961
    invoke-virtual {p0, p3}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    .line 962
    invoke-virtual {p0, p4}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    .line 963
    invoke-virtual {p0, p5}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    .line 964
    invoke-virtual {p0, p6}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    .line 965
    invoke-virtual {p0, p7}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    .line 966
    invoke-virtual {p0, p8}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    .line 967
    invoke-virtual {p0, p9}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    .line 968
    invoke-virtual {p0, p10}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    .line 969
    invoke-virtual {p0, p11}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    .line 970
    return-void
.end method

.method synthetic constructor <init>(IZIIZZIIZZZLandroid/content/pm/UserProperties-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/content/pm/UserProperties;-><init>(IZIIZZIIZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserProperties;)V
    .registers 4
    .param p1, "defaultProperties"    # Landroid/content/pm/UserProperties;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 286
    iput-object p1, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 287
    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 288
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/UserProperties;ZZZ)V
    .registers 7
    .param p1, "orig"    # Landroid/content/pm/UserProperties;
    .param p2, "exposeAllFields"    # Z
    .param p3, "hasManagePermission"    # Z
    .param p4, "hasQueryOrManagePermission"    # Z

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 302
    iget-object v0, p1, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_62

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 310
    if-eqz p2, :cond_3b

    .line 312
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    .line 313
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    .line 314
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    .line 315
    nop

    .line 316
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v0

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    .line 317
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    .line 318
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    .line 320
    :cond_3b
    if-eqz p3, :cond_4b

    .line 322
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    .line 323
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    .line 325
    :cond_4b
    nop

    .line 329
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    .line 330
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    .line 331
    invoke-virtual {p1}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    .line 332
    return-void

    .line 303
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to copy a non-original UserProperties."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    .line 812
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    .line 824
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/UserProperties-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/UserProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/content/pm/UserProperties;)V
    .registers 3
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p2, "defaultUserPropertiesReference"    # Landroid/content/pm/UserProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 677
    invoke-direct {p0, p2}, Landroid/content/pm/UserProperties;-><init>(Landroid/content/pm/UserProperties;)V

    .line 678
    invoke-virtual {p0, p1}, Landroid/content/pm/UserProperties;->updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 679
    return-void
.end method

.method private isPresent(J)Z
    .registers 8
    .param p1, "index"    # J

    .line 341
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private setPresent(J)V
    .registers 8
    .param p1, "index"    # J

    .line 346
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 347
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public getCrossProfileIntentFilterAccessControl()I
    .registers 3

    .line 565
    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 566
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    return v0

    .line 568
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    .line 569
    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    return v0

    .line 571
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileIntentFilterAccessControl"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCrossProfileIntentResolutionStrategy()I
    .registers 3

    .line 594
    const-wide/16 v0, 0x7

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 595
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    return v0

    .line 597
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    .line 598
    iget v0, v0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    return v0

    .line 600
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query crossProfileIntentResolutionStrategy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeleteAppWithParent()Z
    .registers 3

    .line 431
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    return v0

    .line 432
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    return v0

    .line 433
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query deleteAppWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInheritDevicePolicy()I
    .registers 3

    .line 452
    const-wide/16 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    return v0

    .line 453
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget v0, v0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    return v0

    .line 454
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query inheritDevicePolicy"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPropertiesPresent()J
    .registers 3

    .line 352
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    return-wide v0
.end method

.method public getShowInLauncher()I
    .registers 3

    .line 369
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    return v0

    .line 370
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    return v0

    .line 371
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query showInLauncher"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShowInSettings()I
    .registers 3

    .line 396
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    return v0

    .line 397
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget v0, v0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    return v0

    .line 398
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mShowInSettings"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartWithParent()Z
    .registers 3

    .line 413
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    return v0

    .line 414
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    return v0

    .line 415
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query startWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUpdateCrossProfileIntentFiltersOnOTA()Z
    .registers 3

    .line 502
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 503
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return v0

    .line 505
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    .line 506
    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    return v0

    .line 508
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query updateCrossProfileIntentFiltersOnOTA"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUseParentsContacts()Z
    .registers 3

    .line 480
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    return v0

    .line 481
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    return v0

    .line 482
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query useParentsContacts"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCredentialShareableWithParent()Z
    .registers 3

    .line 538
    const-wide/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 539
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    return v0

    .line 541
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    return v0

    .line 542
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query credentialShareableWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMediaSharedWithParent()Z
    .registers 3

    .line 522
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    return v0

    .line 523
    :cond_b
    iget-object v0, p0, Landroid/content/pm/UserProperties;->mDefaultProperties:Landroid/content/pm/UserProperties;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    return v0

    .line 524
    :cond_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You don\'t have permission to query mediaSharedWithParent"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public println(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UserProperties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mPropertiesPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mShowInLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mStartWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mShowInSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mInheritDevicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUseParentsContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mUpdateCrossProfileIntentFiltersOnOTA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileIntentFilterAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 654
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCrossProfileIntentResolutionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 656
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mMediaSharedWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mCredentialShareableWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 659
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    mDeleteAppWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public setCredentialShareableWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 547
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    .line 548
    const-wide/16 v0, 0x9

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 549
    return-void
.end method

.method public setCrossProfileIntentFilterAccessControl(I)V
    .registers 4
    .param p1, "val"    # I

    .line 581
    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    .line 582
    const-wide/16 v0, 0x6

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 583
    return-void
.end method

.method public setCrossProfileIntentResolutionStrategy(I)V
    .registers 4
    .param p1, "val"    # I

    .line 610
    iput p1, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    .line 611
    const-wide/16 v0, 0x7

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 612
    return-void
.end method

.method public setDeleteAppWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 437
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    .line 438
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 439
    return-void
.end method

.method public setInheritDevicePolicy(I)V
    .registers 4
    .param p1, "val"    # I

    .line 458
    iput p1, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    .line 459
    const-wide/16 v0, 0x3

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 460
    return-void
.end method

.method public setMediaSharedWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 528
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    .line 529
    const-wide/16 v0, 0x8

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 530
    return-void
.end method

.method public setShowInLauncher(I)V
    .registers 4
    .param p1, "val"    # I

    .line 375
    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    .line 376
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 377
    return-void
.end method

.method public setShowInSettings(I)V
    .registers 4
    .param p1, "val"    # I

    .line 402
    iput p1, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    .line 403
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 404
    return-void
.end method

.method public setStartWithParent(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 419
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    .line 420
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 421
    return-void
.end method

.method public setUpdateCrossProfileIntentFiltersOnOTA(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 513
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    .line 514
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 515
    return-void
.end method

.method public setUseParentsContacts(Z)V
    .registers 4
    .param p1, "val"    # Z

    .line 486
    iput-boolean p1, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    .line 487
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->setPresent(J)V

    .line 488
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserProperties{mPropertiesPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    .line 620
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowInLauncher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInLauncher()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStartWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 622
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getStartWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShowInSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 623
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getShowInSettings()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInheritDevicePolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUseParentsContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUseParentsContacts()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdateCrossProfileIntentFiltersOnOTA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getUpdateCrossProfileIntentFiltersOnOTA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrossProfileIntentFilterAccessControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 629
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentFilterAccessControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCrossProfileIntentResolutionStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 631
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getCrossProfileIntentResolutionStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMediaSharedWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isMediaSharedWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCredentialShareableWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 633
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->isCredentialShareableWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeleteAppWithParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    invoke-virtual {p0}, Landroid/content/pm/UserProperties;->getDeleteAppWithParent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    return-object v0
.end method

.method public updateFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 690
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v0

    .line 691
    .local v0, "attributeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_105

    .line 692
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "attributeName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_106

    :cond_12
    goto/16 :goto_8c

    :sswitch_14
    const-string v3, "crossProfileIntentResolutionStrategy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x7

    goto/16 :goto_8d

    :sswitch_1f
    const-string/jumbo v3, "useParentsContacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x4

    goto :goto_8d

    :sswitch_2a
    const-string v3, "inheritDevicePolicy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x3

    goto :goto_8d

    :sswitch_34
    const-string v3, "credentialShareableWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x9

    goto :goto_8d

    :sswitch_3f
    const-string/jumbo v3, "showInLauncher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x0

    goto :goto_8d

    :sswitch_4a
    const-string/jumbo v3, "startWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_8d

    :sswitch_55
    const-string/jumbo v3, "mediaSharedWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0x8

    goto :goto_8d

    :sswitch_61
    const-string v3, "crossProfileIntentFilterAccessControl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x6

    goto :goto_8d

    :sswitch_6b
    const-string/jumbo v3, "updateCrossProfileIntentFiltersOnOTA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x5

    goto :goto_8d

    :sswitch_76
    const-string v3, "deleteAppWithParent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v3, 0xa

    goto :goto_8d

    :sswitch_81
    const-string/jumbo v3, "showInSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x2

    goto :goto_8d

    :goto_8c
    const/4 v3, -0x1

    :goto_8d
    packed-switch v3, :pswitch_data_134

    .line 728
    sget-object v3, Landroid/content/pm/UserProperties;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unknown property "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 725
    :pswitch_a9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setDeleteAppWithParent(Z)V

    .line 726
    goto :goto_101

    .line 722
    :pswitch_b1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCredentialShareableWithParent(Z)V

    .line 723
    goto :goto_101

    .line 719
    :pswitch_b9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setMediaSharedWithParent(Z)V

    .line 720
    goto :goto_101

    .line 716
    :pswitch_c1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileIntentResolutionStrategy(I)V

    .line 717
    goto :goto_101

    .line 713
    :pswitch_c9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setCrossProfileIntentFilterAccessControl(I)V

    .line 714
    goto :goto_101

    .line 710
    :pswitch_d1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setUpdateCrossProfileIntentFiltersOnOTA(Z)V

    .line 711
    goto :goto_101

    .line 707
    :pswitch_d9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setUseParentsContacts(Z)V

    .line 708
    goto :goto_101

    .line 704
    :pswitch_e1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setInheritDevicePolicy(I)V

    .line 705
    goto :goto_101

    .line 701
    :pswitch_e9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInSettings(I)V

    .line 702
    goto :goto_101

    .line 698
    :pswitch_f1
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setStartWithParent(Z)V

    .line 699
    goto :goto_101

    .line 695
    :pswitch_f9
    invoke-interface {p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/UserProperties;->setShowInLauncher(I)V

    .line 696
    nop

    .line 691
    .end local v2    # "attributeName":Ljava/lang/String;
    :goto_101
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 731
    .end local v1    # "i":I
    :cond_105
    return-void

    :sswitch_data_106
    .sparse-switch
        -0x6017e8bb -> :sswitch_81
        -0x3e0e2dda -> :sswitch_76
        -0x37ba4d70 -> :sswitch_6b
        -0x323422c4 -> :sswitch_61
        -0x25610ca7 -> :sswitch_55
        -0x12e678ee -> :sswitch_4a
        -0x97b953e -> :sswitch_3f
        0x198cd9d2 -> :sswitch_34
        0x1d3e5bc3 -> :sswitch_2a
        0x22e30bf5 -> :sswitch_1f
        0x7c24f264 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f1
        :pswitch_e9
        :pswitch_e1
        :pswitch_d9
        :pswitch_d1
        :pswitch_c9
        :pswitch_c1
        :pswitch_b9
        :pswitch_b1
        :pswitch_a9
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 791
    iget-wide v0, p0, Landroid/content/pm/UserProperties;->mPropertiesPresent:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 792
    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 794
    iget v0, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget v0, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 797
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 798
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget v0, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 801
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 802
    iget-boolean v0, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 803
    return-void
.end method

.method public writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 744
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 745
    const-string/jumbo v0, "showInLauncher"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInLauncher:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    :cond_11
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 748
    const-string/jumbo v0, "startWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mStartWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 750
    :cond_21
    const-wide/16 v2, 0x2

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 751
    const-string/jumbo v0, "showInSettings"

    iget v2, p0, Landroid/content/pm/UserProperties;->mShowInSettings:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 753
    :cond_31
    const-wide/16 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 754
    const-string v0, "inheritDevicePolicy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mInheritDevicePolicy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 757
    :cond_40
    const-wide/16 v2, 0x4

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 758
    const-string/jumbo v0, "useParentsContacts"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mUseParentsContacts:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 761
    :cond_50
    const-wide/16 v2, 0x5

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 762
    const-string/jumbo v0, "updateCrossProfileIntentFiltersOnOTA"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mUpdateCrossProfileIntentFiltersOnOTA:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 766
    :cond_60
    const-wide/16 v2, 0x6

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 767
    const-string v0, "crossProfileIntentFilterAccessControl"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentFilterAccessControl:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 770
    :cond_6f
    const-wide/16 v2, 0x7

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 771
    const-string v0, "crossProfileIntentResolutionStrategy"

    iget v2, p0, Landroid/content/pm/UserProperties;->mCrossProfileIntentResolutionStrategy:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    :cond_7e
    const-wide/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 775
    const-string/jumbo v0, "mediaSharedWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mMediaSharedWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 778
    :cond_8e
    const-wide/16 v2, 0x9

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 779
    const-string v0, "credentialShareableWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mCredentialShareableWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 782
    :cond_9d
    const-wide/16 v2, 0xa

    invoke-direct {p0, v2, v3}, Landroid/content/pm/UserProperties;->isPresent(J)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 783
    const-string v0, "deleteAppWithParent"

    iget-boolean v2, p0, Landroid/content/pm/UserProperties;->mDeleteAppWithParent:Z

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 786
    :cond_ac
    return-void
.end method
