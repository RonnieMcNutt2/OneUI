.class Landroid/hardware/display/SemWifiDisplayParameter$1;
.super Ljava/lang/Object;
.source "SemWifiDisplayParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/SemWifiDisplayParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/SemWifiDisplayParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplayParameter;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 284
    new-instance v0, Landroid/hardware/display/SemWifiDisplayParameter;

    invoke-direct {v0, p1}, Landroid/hardware/display/SemWifiDisplayParameter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplayParameter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/SemWifiDisplayParameter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/display/SemWifiDisplayParameter;
    .registers 3
    .param p1, "size"    # I

    .line 288
    if-nez p1, :cond_5

    sget-object v0, Landroid/hardware/display/SemWifiDisplayParameter;->EMPTY_ARRAY:[Landroid/hardware/display/SemWifiDisplayParameter;

    goto :goto_7

    :cond_5
    new-array v0, p1, [Landroid/hardware/display/SemWifiDisplayParameter;

    :goto_7
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 282
    invoke-virtual {p0, p1}, Landroid/hardware/display/SemWifiDisplayParameter$1;->newArray(I)[Landroid/hardware/display/SemWifiDisplayParameter;

    move-result-object p1

    return-object p1
.end method
