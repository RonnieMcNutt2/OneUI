.class Landroid/system/keystore2/CreateOperationResponse$1;
.super Ljava/lang/Object;
.source "CreateOperationResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/CreateOperationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/keystore2/CreateOperationResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/system/keystore2/CreateOperationResponse;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 17
    new-instance v0, Landroid/system/keystore2/CreateOperationResponse;

    invoke-direct {v0}, Landroid/system/keystore2/CreateOperationResponse;-><init>()V

    .line 18
    .local v0, "_aidl_out":Landroid/system/keystore2/CreateOperationResponse;
    invoke-virtual {v0, p1}, Landroid/system/keystore2/CreateOperationResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Landroid/system/keystore2/CreateOperationResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/keystore2/CreateOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/system/keystore2/CreateOperationResponse;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 23
    new-array v0, p1, [Landroid/system/keystore2/CreateOperationResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Landroid/system/keystore2/CreateOperationResponse$1;->newArray(I)[Landroid/system/keystore2/CreateOperationResponse;

    move-result-object p1

    return-object p1
.end method
