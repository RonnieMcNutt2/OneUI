.class Landroid/app/admin/DeviceAdminAuthority$1;
.super Ljava/lang/Object;
.source "DeviceAdminAuthority.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceAdminAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/DeviceAdminAuthority;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DeviceAdminAuthority;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 77
    sget-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminAuthority$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DeviceAdminAuthority;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/admin/DeviceAdminAuthority;
    .registers 3
    .param p1, "size"    # I

    .line 82
    new-array v0, p1, [Landroid/app/admin/DeviceAdminAuthority;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/admin/DeviceAdminAuthority$1;->newArray(I)[Landroid/app/admin/DeviceAdminAuthority;

    move-result-object p1

    return-object p1
.end method
