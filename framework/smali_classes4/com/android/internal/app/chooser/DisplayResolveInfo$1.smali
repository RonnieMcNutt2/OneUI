.class Lcom/android/internal/app/chooser/DisplayResolveInfo$1;
.super Ljava/lang/Object;
.source "DisplayResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/chooser/DisplayResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 235
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/os/Parcel;Lcom/android/internal/app/chooser/DisplayResolveInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 3
    .param p1, "size"    # I

    .line 239
    new-array v0, p1, [Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;->newArray(I)[Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    return-object p1
.end method
