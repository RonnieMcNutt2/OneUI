.class Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;
.super Ljava/lang/Object;
.source "MediaFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sume/core/filter/MediaFilter$Option;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    new-instance v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 3
    .param p1, "size"    # I

    .line 199
    new-array v0, p1, [Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 191
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;->newArray(I)[Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method
