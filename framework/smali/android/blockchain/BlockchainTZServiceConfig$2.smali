.class Landroid/blockchain/BlockchainTZServiceConfig$2;
.super Ljava/lang/Object;
.source "BlockchainTZServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/blockchain/BlockchainTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/blockchain/BlockchainTZServiceConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/blockchain/BlockchainTZServiceConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    new-instance v0, Landroid/blockchain/BlockchainTZServiceConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/blockchain/BlockchainTZServiceConfig;-><init>(Landroid/os/Parcel;Landroid/blockchain/BlockchainTZServiceConfig-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroid/blockchain/BlockchainTZServiceConfig$2;->createFromParcel(Landroid/os/Parcel;)Landroid/blockchain/BlockchainTZServiceConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/blockchain/BlockchainTZServiceConfig;
    .registers 3
    .param p1, "size"    # I

    .line 83
    new-array v0, p1, [Landroid/blockchain/BlockchainTZServiceConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 76
    invoke-virtual {p0, p1}, Landroid/blockchain/BlockchainTZServiceConfig$2;->newArray(I)[Landroid/blockchain/BlockchainTZServiceConfig;

    move-result-object p1

    return-object p1
.end method
