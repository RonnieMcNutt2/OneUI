.class Landroid/content/AttributionSourceState$1;
.super Ljava/lang/Object;
.source "AttributionSourceState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSourceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/AttributionSourceState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/AttributionSourceState;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 32
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    .line 33
    .local v0, "_aidl_out":Landroid/content/AttributionSourceState;
    invoke-virtual {v0, p1}, Landroid/content/AttributionSourceState;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/AttributionSourceState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/AttributionSourceState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/AttributionSourceState;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 38
    new-array v0, p1, [Landroid/content/AttributionSourceState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Landroid/content/AttributionSourceState$1;->newArray(I)[Landroid/content/AttributionSourceState;

    move-result-object p1

    return-object p1
.end method
