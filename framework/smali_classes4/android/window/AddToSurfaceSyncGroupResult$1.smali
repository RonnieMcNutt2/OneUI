.class Landroid/window/AddToSurfaceSyncGroupResult$1;
.super Ljava/lang/Object;
.source "AddToSurfaceSyncGroupResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/AddToSurfaceSyncGroupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/AddToSurfaceSyncGroupResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/AddToSurfaceSyncGroupResult;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 21
    new-instance v0, Landroid/window/AddToSurfaceSyncGroupResult;

    invoke-direct {v0}, Landroid/window/AddToSurfaceSyncGroupResult;-><init>()V

    .line 22
    .local v0, "_aidl_out":Landroid/window/AddToSurfaceSyncGroupResult;
    invoke-virtual {v0, p1}, Landroid/window/AddToSurfaceSyncGroupResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 23
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Landroid/window/AddToSurfaceSyncGroupResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/AddToSurfaceSyncGroupResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/window/AddToSurfaceSyncGroupResult;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 27
    new-array v0, p1, [Landroid/window/AddToSurfaceSyncGroupResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Landroid/window/AddToSurfaceSyncGroupResult$1;->newArray(I)[Landroid/window/AddToSurfaceSyncGroupResult;

    move-result-object p1

    return-object p1
.end method
