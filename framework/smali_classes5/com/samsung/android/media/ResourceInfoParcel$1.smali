.class Lcom/samsung/android/media/ResourceInfoParcel$1;
.super Ljava/lang/Object;
.source "ResourceInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/ResourceInfoParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/media/ResourceInfoParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/media/ResourceInfoParcel;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Lcom/samsung/android/media/ResourceInfoParcel;

    invoke-direct {v0}, Lcom/samsung/android/media/ResourceInfoParcel;-><init>()V

    .line 39
    .local v0, "_aidl_out":Lcom/samsung/android/media/ResourceInfoParcel;
    invoke-virtual {v0, p1}, Lcom/samsung/android/media/ResourceInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/ResourceInfoParcel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/media/ResourceInfoParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/media/ResourceInfoParcel;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 44
    new-array v0, p1, [Lcom/samsung/android/media/ResourceInfoParcel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/android/media/ResourceInfoParcel$1;->newArray(I)[Lcom/samsung/android/media/ResourceInfoParcel;

    move-result-object p1

    return-object p1
.end method
