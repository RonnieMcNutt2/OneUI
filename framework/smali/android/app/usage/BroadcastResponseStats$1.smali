.class Landroid/app/usage/BroadcastResponseStats$1;
.super Ljava/lang/Object;
.source "BroadcastResponseStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/BroadcastResponseStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/BroadcastResponseStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/BroadcastResponseStats;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 230
    new-instance v0, Landroid/app/usage/BroadcastResponseStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/usage/BroadcastResponseStats;-><init>(Landroid/os/Parcel;Landroid/app/usage/BroadcastResponseStats-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 227
    invoke-virtual {p0, p1}, Landroid/app/usage/BroadcastResponseStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/usage/BroadcastResponseStats;
    .registers 3
    .param p1, "size"    # I

    .line 235
    new-array v0, p1, [Landroid/app/usage/BroadcastResponseStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 227
    invoke-virtual {p0, p1}, Landroid/app/usage/BroadcastResponseStats$1;->newArray(I)[Landroid/app/usage/BroadcastResponseStats;

    move-result-object p1

    return-object p1
.end method
