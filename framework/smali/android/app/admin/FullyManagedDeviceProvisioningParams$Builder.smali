.class public final Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
.super Ljava/lang/Object;
.source "FullyManagedDeviceProvisioningParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/FullyManagedDeviceProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdminExtras:Landroid/os/PersistableBundle;

.field mDemoDevice:Z

.field private final mDeviceAdminComponentName:Landroid/content/ComponentName;

.field mDeviceOwnerCanGrantSensorsPermissions:Z

.field private mLeaveAllSystemAppsEnabled:Z

.field private mLocalTime:J

.field private mLocale:Ljava/util/Locale;

.field private final mOwnerName:Ljava/lang/String;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4
    .param p1, "deviceAdminComponentName"    # Landroid/content/ComponentName;
    .param p2, "ownerName"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceOwnerCanGrantSensorsPermissions:Z

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDemoDevice:Z

    .line 243
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    .line 244
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    .line 245
    return-void
.end method


# virtual methods
.method public build()Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .registers 14

    .line 329
    new-instance v12, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    iget-object v1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceAdminComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    iget-object v4, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mTimeZone:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocalTime:J

    iget-object v7, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocale:Ljava/util/Locale;

    iget-boolean v8, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceOwnerCanGrantSensorsPermissions:Z

    .line 337
    iget-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_1a
    move-object v9, v0

    iget-boolean v10, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDemoDevice:Z

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroid/app/admin/FullyManagedDeviceProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/lang/String;JLjava/util/Locale;ZLandroid/os/PersistableBundle;ZLandroid/app/admin/FullyManagedDeviceProvisioningParams-IA;)V

    .line 329
    return-object v12
.end method

.method public setAdminExtras(Landroid/os/PersistableBundle;)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 3
    .param p1, "adminExtras"    # Landroid/os/PersistableBundle;

    .line 306
    if-eqz p1, :cond_8

    .line 307
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    goto :goto_d

    .line 308
    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_d
    iput-object v0, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    .line 309
    return-object p0
.end method

.method public setCanDeviceOwnerGrantSensorsPermissions(Z)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 2
    .param p1, "mayGrant"    # Z

    .line 296
    iput-boolean p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDeviceOwnerCanGrantSensorsPermissions:Z

    .line 297
    return-object p0
.end method

.method public setDemoDevice(Z)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 2
    .param p1, "demoDevice"    # Z

    .line 318
    iput-boolean p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mDemoDevice:Z

    .line 319
    return-object p0
.end method

.method public setLeaveAllSystemAppsEnabled(Z)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 2
    .param p1, "leaveAllSystemAppsEnabled"    # Z

    .line 255
    iput-boolean p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    .line 256
    return-object p0
.end method

.method public setLocalTime(J)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 3
    .param p1, "localTime"    # J

    .line 276
    iput-wide p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocalTime:J

    .line 277
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 286
    iput-object p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mLocale:Ljava/util/Locale;

    .line 287
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;
    .registers 2
    .param p1, "timeZone"    # Ljava/lang/String;

    .line 265
    iput-object p1, p0, Landroid/app/admin/FullyManagedDeviceProvisioningParams$Builder;->mTimeZone:Ljava/lang/String;

    .line 266
    return-object p0
.end method
