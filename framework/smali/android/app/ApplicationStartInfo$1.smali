.class Landroid/app/ApplicationStartInfo$1;
.super Ljava/lang/Object;
.source "ApplicationStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationStartInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/ApplicationStartInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/ApplicationStartInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 594
    new-instance v0, Landroid/app/ApplicationStartInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/os/Parcel;Landroid/app/ApplicationStartInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 591
    invoke-virtual {p0, p1}, Landroid/app/ApplicationStartInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ApplicationStartInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/ApplicationStartInfo;
    .registers 3
    .param p1, "size"    # I

    .line 599
    new-array v0, p1, [Landroid/app/ApplicationStartInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 591
    invoke-virtual {p0, p1}, Landroid/app/ApplicationStartInfo$1;->newArray(I)[Landroid/app/ApplicationStartInfo;

    move-result-object p1

    return-object p1
.end method
