.class Lcom/android/internal/os/LongMultiStateCounter$1;
.super Ljava/lang/Object;
.source "LongMultiStateCounter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LongMultiStateCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/os/LongMultiStateCounter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/LongMultiStateCounter;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 184
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(Landroid/os/Parcel;Lcom/android/internal/os/LongMultiStateCounter-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/os/LongMultiStateCounter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/os/LongMultiStateCounter;
    .registers 3
    .param p1, "size"    # I

    .line 189
    new-array v0, p1, [Lcom/android/internal/os/LongMultiStateCounter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/internal/os/LongMultiStateCounter$1;->newArray(I)[Lcom/android/internal/os/LongMultiStateCounter;

    move-result-object p1

    return-object p1
.end method
