.class Landroid/widget/SemRemoteViewsPropertyAnimation$1;
.super Ljava/lang/Object;
.source "SemRemoteViewsPropertyAnimation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemRemoteViewsPropertyAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/SemRemoteViewsPropertyAnimation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemRemoteViewsPropertyAnimation;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    new-instance v0, Landroid/widget/SemRemoteViewsPropertyAnimation;

    invoke-direct {v0, p1}, Landroid/widget/SemRemoteViewsPropertyAnimation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsPropertyAnimation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemRemoteViewsPropertyAnimation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/widget/SemRemoteViewsPropertyAnimation;
    .registers 3
    .param p1, "size"    # I

    .line 62
    new-array v0, p1, [Landroid/widget/SemRemoteViewsPropertyAnimation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsPropertyAnimation$1;->newArray(I)[Landroid/widget/SemRemoteViewsPropertyAnimation;

    move-result-object p1

    return-object p1
.end method
