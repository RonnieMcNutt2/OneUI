.class Landroid/media/MediaRoute2ProviderInfo$1;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/MediaRoute2ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaRoute2ProviderInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 41
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo;

    invoke-direct {v0, p1}, Landroid/media/MediaRoute2ProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2ProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaRoute2ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/MediaRoute2ProviderInfo;
    .registers 3
    .param p1, "size"    # I

    .line 45
    new-array v0, p1, [Landroid/media/MediaRoute2ProviderInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Landroid/media/MediaRoute2ProviderInfo$1;->newArray(I)[Landroid/media/MediaRoute2ProviderInfo;

    move-result-object p1

    return-object p1
.end method
