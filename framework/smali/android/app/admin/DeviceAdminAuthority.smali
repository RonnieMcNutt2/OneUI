.class public final Landroid/app/admin/DeviceAdminAuthority;
.super Landroid/app/admin/Authority;
.source "DeviceAdminAuthority.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DeviceAdminAuthority;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Landroid/app/admin/DeviceAdminAuthority;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminAuthority;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    .line 73
    new-instance v0, Landroid/app/admin/DeviceAdminAuthority$1;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminAuthority$1;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminAuthority;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/app/admin/Authority;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 56
    :cond_4
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "DeviceAdminAuthority {}"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    return-void
.end method
