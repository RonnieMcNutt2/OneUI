.class Lcom/android/internal/net/KnoxVpnProfile$1;
.super Ljava/lang/Object;
.source "KnoxVpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/KnoxVpnProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/net/KnoxVpnProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/KnoxVpnProfile;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 581
    new-instance v0, Lcom/android/internal/net/KnoxVpnProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/net/KnoxVpnProfile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/internal/net/KnoxVpnProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/net/KnoxVpnProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/net/KnoxVpnProfile;
    .registers 3
    .param p1, "size"    # I

    .line 586
    new-array v0, p1, [Lcom/android/internal/net/KnoxVpnProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/internal/net/KnoxVpnProfile$1;->newArray(I)[Lcom/android/internal/net/KnoxVpnProfile;

    move-result-object p1

    return-object p1
.end method
