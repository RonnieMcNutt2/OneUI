.class Landroid/view/SurfaceControl$Transaction$2;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/SurfaceControl$Transaction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4651
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;-><init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$Transaction-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 4648
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction$2;->createFromParcel(Landroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/SurfaceControl$Transaction;
    .registers 3
    .param p1, "size"    # I

    .line 4655
    new-array v0, p1, [Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 4648
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction$2;->newArray(I)[Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    return-object p1
.end method
