.class Landroid/view/WindowAnimationFrameStats$1;
.super Ljava/lang/Object;
.source "WindowAnimationFrameStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowAnimationFrameStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/WindowAnimationFrameStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowAnimationFrameStats;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 94
    new-instance v0, Landroid/view/WindowAnimationFrameStats;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/WindowAnimationFrameStats;-><init>(Landroid/os/Parcel;Landroid/view/WindowAnimationFrameStats-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/WindowAnimationFrameStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/WindowAnimationFrameStats;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/WindowAnimationFrameStats;
    .registers 3
    .param p1, "size"    # I

    .line 99
    new-array v0, p1, [Landroid/view/WindowAnimationFrameStats;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/WindowAnimationFrameStats$1;->newArray(I)[Landroid/view/WindowAnimationFrameStats;

    move-result-object p1

    return-object p1
.end method
