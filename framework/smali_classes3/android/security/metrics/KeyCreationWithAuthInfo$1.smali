.class Landroid/security/metrics/KeyCreationWithAuthInfo$1;
.super Ljava/lang/Object;
.source "KeyCreationWithAuthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/metrics/KeyCreationWithAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/security/metrics/KeyCreationWithAuthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/metrics/KeyCreationWithAuthInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 21
    new-instance v0, Landroid/security/metrics/KeyCreationWithAuthInfo;

    invoke-direct {v0}, Landroid/security/metrics/KeyCreationWithAuthInfo;-><init>()V

    .line 22
    .local v0, "_aidl_out":Landroid/security/metrics/KeyCreationWithAuthInfo;
    invoke-virtual {v0, p1}, Landroid/security/metrics/KeyCreationWithAuthInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Landroid/security/metrics/KeyCreationWithAuthInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/security/metrics/KeyCreationWithAuthInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 27
    new-array v0, p1, [Landroid/security/metrics/KeyCreationWithAuthInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Landroid/security/metrics/KeyCreationWithAuthInfo$1;->newArray(I)[Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object p1

    return-object p1
.end method
