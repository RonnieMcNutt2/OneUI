.class Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;
.super Ljava/lang/Object;
.source "SemContextSlocationArDistanceAttribute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;-><init>(Landroid/os/Parcel;Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;
    .registers 3
    .param p1, "size"    # I

    .line 51
    new-array v0, p1, [Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;->newArray(I)[Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;

    move-result-object p1

    return-object p1
.end method
