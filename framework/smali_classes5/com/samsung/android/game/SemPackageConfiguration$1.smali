.class Lcom/samsung/android/game/SemPackageConfiguration$1;
.super Ljava/lang/Object;
.source "SemPackageConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/SemPackageConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/game/SemPackageConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/game/SemPackageConfiguration;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 297
    new-instance v0, Lcom/samsung/android/game/SemPackageConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Landroid/os/Parcel;Lcom/samsung/android/game/SemPackageConfiguration-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/android/game/SemPackageConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/game/SemPackageConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/game/SemPackageConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 301
    new-array v0, p1, [Lcom/samsung/android/game/SemPackageConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 294
    invoke-virtual {p0, p1}, Lcom/samsung/android/game/SemPackageConfiguration$1;->newArray(I)[Lcom/samsung/android/game/SemPackageConfiguration;

    move-result-object p1

    return-object p1
.end method
