.class Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;
.super Ljava/lang/Object;
.source "SynchronousResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/utils/SynchronousResultReceiver$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Landroid/os/Parcel;Lcom/android/modules/utils/SynchronousResultReceiver$Result-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/modules/utils/SynchronousResultReceiver$Result;
    .registers 3
    .param p1, "size"    # I

    .line 146
    new-array v0, p1, [Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result$1;->newArray(I)[Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object p1

    return-object p1
.end method
