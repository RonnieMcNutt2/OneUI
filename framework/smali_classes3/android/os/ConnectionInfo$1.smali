.class Landroid/os/ConnectionInfo$1;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ConnectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ConnectionInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 18
    new-instance v0, Landroid/os/ConnectionInfo;

    invoke-direct {v0}, Landroid/os/ConnectionInfo;-><init>()V

    .line 19
    .local v0, "_aidl_out":Landroid/os/ConnectionInfo;
    invoke-virtual {v0, p1}, Landroid/os/ConnectionInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 20
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/ConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/ConnectionInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 24
    new-array v0, p1, [Landroid/os/ConnectionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/os/ConnectionInfo$1;->newArray(I)[Landroid/os/ConnectionInfo;

    move-result-object p1

    return-object p1
.end method
