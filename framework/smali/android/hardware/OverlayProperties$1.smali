.class Landroid/hardware/OverlayProperties$1;
.super Ljava/lang/Object;
.source "OverlayProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/OverlayProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/OverlayProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/OverlayProperties;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 107
    new-instance v0, Landroid/hardware/OverlayProperties;

    invoke-static {p1}, Landroid/hardware/OverlayProperties;->-$$Nest$smnReadOverlayPropertiesFromParcel(Landroid/os/Parcel;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/hardware/OverlayProperties;-><init>(J)V

    return-object v0

    .line 109
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Landroid/hardware/OverlayProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/OverlayProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/OverlayProperties;
    .registers 3
    .param p1, "size"    # I

    .line 113
    new-array v0, p1, [Landroid/hardware/OverlayProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 104
    invoke-virtual {p0, p1}, Landroid/hardware/OverlayProperties$1;->newArray(I)[Landroid/hardware/OverlayProperties;

    move-result-object p1

    return-object p1
.end method
