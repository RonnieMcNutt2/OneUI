.class Lcom/samsung/android/sdhms/SemBatteryStats$1;
.super Ljava/lang/Object;
.source "SemBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdhms/SemBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdhms/SemBatteryStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdhms/SemBatteryStats;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 446
    new-instance v0, Lcom/samsung/android/sdhms/SemBatteryStats;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdhms/SemBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 443
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdhms/SemBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sdhms/SemBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/sdhms/SemBatteryStats;
    .registers 3
    .param p1, "size"    # I

    .line 451
    new-array v0, p1, [Lcom/samsung/android/sdhms/SemBatteryStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 443
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdhms/SemBatteryStats$1;->newArray(I)[Lcom/samsung/android/sdhms/SemBatteryStats;

    move-result-object p1

    return-object p1
.end method
