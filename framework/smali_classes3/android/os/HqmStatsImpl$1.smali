.class Landroid/os/HqmStatsImpl$1;
.super Ljava/lang/Object;
.source "HqmStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HqmStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/HqmStatsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/HqmStatsImpl;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    new-instance v0, Landroid/os/HqmStatsImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/os/HqmStatsImpl;-><init>(Landroid/os/Parcel;Landroid/os/HqmStatsImpl-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/HqmStatsImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/HqmStatsImpl;
    .registers 3
    .param p1, "size"    # I

    .line 38
    new-array v0, p1, [Landroid/os/HqmStatsImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl$1;->newArray(I)[Landroid/os/HqmStatsImpl;

    move-result-object p1

    return-object p1
.end method
