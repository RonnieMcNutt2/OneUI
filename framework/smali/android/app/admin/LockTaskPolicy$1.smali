.class Landroid/app/admin/LockTaskPolicy$1;
.super Ljava/lang/Object;
.source "LockTaskPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/LockTaskPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/LockTaskPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/LockTaskPolicy;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 175
    new-instance v0, Landroid/app/admin/LockTaskPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/admin/LockTaskPolicy;-><init>(Landroid/os/Parcel;Landroid/app/admin/LockTaskPolicy-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 172
    invoke-virtual {p0, p1}, Landroid/app/admin/LockTaskPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/LockTaskPolicy;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/admin/LockTaskPolicy;
    .registers 3
    .param p1, "size"    # I

    .line 180
    new-array v0, p1, [Landroid/app/admin/LockTaskPolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 172
    invoke-virtual {p0, p1}, Landroid/app/admin/LockTaskPolicy$1;->newArray(I)[Landroid/app/admin/LockTaskPolicy;

    move-result-object p1

    return-object p1
.end method
