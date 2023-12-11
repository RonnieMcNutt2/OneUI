.class Landroid/os/BundleMerger$1;
.super Ljava/lang/Object;
.source "BundleMerger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BundleMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/BundleMerger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/BundleMerger;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 380
    new-instance v0, Landroid/os/BundleMerger;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/BundleMerger;-><init>(Landroid/os/Parcel;Landroid/os/BundleMerger-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 377
    invoke-virtual {p0, p1}, Landroid/os/BundleMerger$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/BundleMerger;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/BundleMerger;
    .registers 3
    .param p1, "size"    # I

    .line 385
    new-array v0, p1, [Landroid/os/BundleMerger;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 377
    invoke-virtual {p0, p1}, Landroid/os/BundleMerger$1;->newArray(I)[Landroid/os/BundleMerger;

    move-result-object p1

    return-object p1
.end method
