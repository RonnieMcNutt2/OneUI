.class Landroid/media/tv/TableRequest$1;
.super Ljava/lang/Object;
.source "TableRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TableRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 83
    invoke-static {p1}, Landroid/media/tv/TableRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Landroid/media/tv/TableRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/media/tv/TableRequest;
    .registers 3
    .param p1, "size"    # I

    .line 88
    new-array v0, p1, [Landroid/media/tv/TableRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 79
    invoke-virtual {p0, p1}, Landroid/media/tv/TableRequest$1;->newArray(I)[Landroid/media/tv/TableRequest;

    move-result-object p1

    return-object p1
.end method
