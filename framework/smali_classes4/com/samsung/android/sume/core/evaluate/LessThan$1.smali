.class Lcom/samsung/android/sume/core/evaluate/LessThan$1;
.super Ljava/lang/Object;
.source "LessThan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/evaluate/LessThan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sume/core/evaluate/LessThan<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/core/evaluate/LessThan;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Lcom/samsung/android/sume/core/evaluate/LessThan<",
            "*>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/samsung/android/sume/core/evaluate/LessThan;

    invoke-direct {v0, p1}, Lcom/samsung/android/sume/core/evaluate/LessThan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/LessThan$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/sume/core/evaluate/LessThan;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/sume/core/evaluate/LessThan;
    .registers 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/samsung/android/sume/core/evaluate/LessThan<",
            "*>;"
        }
    .end annotation

    .line 34
    new-array v0, p1, [Lcom/samsung/android/sume/core/evaluate/LessThan;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/evaluate/LessThan$1;->newArray(I)[Lcom/samsung/android/sume/core/evaluate/LessThan;

    move-result-object p1

    return-object p1
.end method
