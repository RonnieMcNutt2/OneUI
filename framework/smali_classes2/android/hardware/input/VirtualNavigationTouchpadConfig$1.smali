.class Landroid/hardware/input/VirtualNavigationTouchpadConfig$1;
.super Ljava/lang/Object;
.source "VirtualNavigationTouchpadConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualNavigationTouchpadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/input/VirtualNavigationTouchpadConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    new-instance v0, Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualNavigationTouchpadConfig-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 75
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/input/VirtualNavigationTouchpadConfig;
    .registers 3
    .param p1, "size"    # I

    .line 83
    new-array v0, p1, [Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 75
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig$1;->newArray(I)[Landroid/hardware/input/VirtualNavigationTouchpadConfig;

    move-result-object p1

    return-object p1
.end method
