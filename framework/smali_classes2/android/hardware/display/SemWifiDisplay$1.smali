.class Landroid/hardware/display/SemWifiDisplay$1;
.super Ljava/lang/Object;
.source "SemWifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/SemWifiDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplay;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    const-class v0, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/WifiDisplay;

    .line 55
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    new-instance v1, Landroid/hardware/display/SemWifiDisplay;

    invoke-direct {v1, v0}, Landroid/hardware/display/SemWifiDisplay;-><init>(Landroid/hardware/display/WifiDisplay;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/SemWifiDisplay;
    .registers 3
    .param p1, "size"    # I

    .line 59
    if-nez p1, :cond_5

    sget-object v0, Landroid/hardware/display/SemWifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplay;

    goto :goto_7

    :cond_5
    new-array v0, p1, [Landroid/hardware/display/SemWifiDisplay;

    :goto_7
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplay$1;->newArray(I)[Landroid/hardware/display/SemWifiDisplay;

    move-result-object p1

    return-object p1
.end method
