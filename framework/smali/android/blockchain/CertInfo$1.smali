.class Landroid/blockchain/CertInfo$1;
.super Ljava/lang/Object;
.source "CertInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/CertInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/blockchain/CertInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/blockchain/CertInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    new-instance v0, Landroid/blockchain/CertInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/blockchain/CertInfo;-><init>(Landroid/os/Parcel;Landroid/blockchain/CertInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Landroid/blockchain/CertInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/blockchain/CertInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/blockchain/CertInfo;
    .registers 3
    .param p1, "size"    # I

    .line 26
    new-array v0, p1, [Landroid/blockchain/CertInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Landroid/blockchain/CertInfo$1;->newArray(I)[Landroid/blockchain/CertInfo;

    move-result-object p1

    return-object p1
.end method
