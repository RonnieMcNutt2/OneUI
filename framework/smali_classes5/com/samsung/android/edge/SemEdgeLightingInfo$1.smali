.class Lcom/samsung/android/edge/SemEdgeLightingInfo$1;
.super Ljava/lang/Object;
.source "SemEdgeLightingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/SemEdgeLightingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/edge/SemEdgeLightingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 233
    new-instance v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/edge/SemEdgeLightingInfo;-><init>(Landroid/os/Parcel;Lcom/samsung/android/edge/SemEdgeLightingInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 231
    invoke-virtual {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .registers 3
    .param p1, "size"    # I

    .line 237
    new-array v0, p1, [Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 231
    invoke-virtual {p0, p1}, Lcom/samsung/android/edge/SemEdgeLightingInfo$1;->newArray(I)[Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object p1

    return-object p1
.end method
