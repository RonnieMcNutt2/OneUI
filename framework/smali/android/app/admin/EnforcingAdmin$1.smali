.class Landroid/app/admin/EnforcingAdmin$1;
.super Ljava/lang/Object;
.source "EnforcingAdmin.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/EnforcingAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/EnforcingAdmin;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/EnforcingAdmin;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 120
    new-instance v0, Landroid/app/admin/EnforcingAdmin;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/admin/EnforcingAdmin;-><init>(Landroid/os/Parcel;Landroid/app/admin/EnforcingAdmin-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/admin/EnforcingAdmin$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/EnforcingAdmin;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/admin/EnforcingAdmin;
    .registers 3
    .param p1, "size"    # I

    .line 125
    new-array v0, p1, [Landroid/app/admin/EnforcingAdmin;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Landroid/app/admin/EnforcingAdmin$1;->newArray(I)[Landroid/app/admin/EnforcingAdmin;

    move-result-object p1

    return-object p1
.end method
