.class Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInstaller$InstallConstraintsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4452
    new-instance v0, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 4444
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/PackageInstaller$InstallConstraintsResult;
    .registers 3
    .param p1, "size"    # I

    .line 4447
    new-array v0, p1, [Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 4444
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$InstallConstraintsResult$1;->newArray(I)[Landroid/content/pm/PackageInstaller$InstallConstraintsResult;

    move-result-object p1

    return-object p1
.end method
