.class Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;
.super Ljava/lang/Object;
.source "SemContextApproachAttribute.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextApproachAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/hardware/context/SemContextApproachAttribute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextApproachAttribute;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    invoke-direct {v0, p1}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/hardware/context/SemContextApproachAttribute;
    .registers 3
    .param p1, "size"    # I

    .line 49
    new-array v0, p1, [Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/context/SemContextApproachAttribute$1;->newArray(I)[Lcom/samsung/android/hardware/context/SemContextApproachAttribute;

    move-result-object p1

    return-object p1
.end method
