.class Landroid/hardware/input/VirtualMouseButtonEvent$1;
.super Ljava/lang/Object;
.source "VirtualMouseButtonEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualMouseButtonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/input/VirtualMouseButtonEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualMouseButtonEvent;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 208
    new-instance v0, Landroid/hardware/input/VirtualMouseButtonEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/VirtualMouseButtonEvent;-><init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualMouseButtonEvent-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouseButtonEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualMouseButtonEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/input/VirtualMouseButtonEvent;
    .registers 3
    .param p1, "size"    # I

    .line 212
    new-array v0, p1, [Landroid/hardware/input/VirtualMouseButtonEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 206
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualMouseButtonEvent$1;->newArray(I)[Landroid/hardware/input/VirtualMouseButtonEvent;

    move-result-object p1

    return-object p1
.end method
