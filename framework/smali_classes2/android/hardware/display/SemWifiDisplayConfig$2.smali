.class Landroid/hardware/display/SemWifiDisplayConfig$2;
.super Ljava/lang/Object;
.source "SemWifiDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/SemWifiDisplayConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplayConfig;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 160
    new-instance v0, Landroid/hardware/display/SemWifiDisplayConfig;

    invoke-direct {v0, p1}, Landroid/hardware/display/SemWifiDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplayConfig$2;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/SemWifiDisplayConfig;
    .registers 3
    .param p1, "size"    # I

    .line 165
    new-array v0, p1, [Landroid/hardware/display/SemWifiDisplayConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 157
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplayConfig$2;->newArray(I)[Landroid/hardware/display/SemWifiDisplayConfig;

    move-result-object p1

    return-object p1
.end method
