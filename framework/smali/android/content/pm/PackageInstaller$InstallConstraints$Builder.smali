.class public final Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
.super Ljava/lang/Object;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller$InstallConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppNotForegroundRequired:Z

.field private mAppNotInteractingRequired:Z

.field private mAppNotTopVisibleRequired:Z

.field private mDeviceIdleRequired:Z

.field private mNotInCallRequired:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/pm/PackageInstaller$InstallConstraints;
    .registers 8

    .line 4587
    new-instance v6, Landroid/content/pm/PackageInstaller$InstallConstraints;

    iget-boolean v1, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mDeviceIdleRequired:Z

    iget-boolean v2, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotForegroundRequired:Z

    iget-boolean v3, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotInteractingRequired:Z

    iget-boolean v4, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotTopVisibleRequired:Z

    iget-boolean v5, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mNotInCallRequired:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller$InstallConstraints;-><init>(ZZZZZ)V

    return-object v6
.end method

.method public setAppNotForegroundRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 4533
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotForegroundRequired:Z

    .line 4534
    return-object p0
.end method

.method public setAppNotInteractingRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 4549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotInteractingRequired:Z

    .line 4550
    return-object p0
.end method

.method public setAppNotTopVisibleRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 4568
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mAppNotTopVisibleRequired:Z

    .line 4569
    return-object p0
.end method

.method public setDeviceIdleRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 4523
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mDeviceIdleRequired:Z

    .line 4524
    return-object p0
.end method

.method public setNotInCallRequired()Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;
    .registers 2

    .line 4578
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageInstaller$InstallConstraints$Builder;->mNotInCallRequired:Z

    .line 4579
    return-object p0
.end method
