.class Landroid/os/CcuStatsInfo$1;
.super Ljava/lang/Object;
.source "CcuStatsInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CcuStatsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CcuStatsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CcuStatsInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    new-instance v0, Landroid/os/CcuStatsInfo;

    invoke-direct {v0, p1}, Landroid/os/CcuStatsInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/CcuStatsInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CcuStatsInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/CcuStatsInfo;
    .registers 3
    .param p1, "size"    # I

    .line 36
    new-array v0, p1, [Landroid/os/CcuStatsInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Landroid/os/CcuStatsInfo$1;->newArray(I)[Landroid/os/CcuStatsInfo;

    move-result-object p1

    return-object p1
.end method
