.class Landroid/view/InsetsSourceControl$Array$1;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsSourceControl$Array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/InsetsSourceControl$Array;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InsetsSourceControl$Array;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 341
    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v0, p1}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl$Array$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InsetsSourceControl$Array;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/InsetsSourceControl$Array;
    .registers 3
    .param p1, "size"    # I

    .line 345
    new-array v0, p1, [Landroid/view/InsetsSourceControl$Array;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceControl$Array$1;->newArray(I)[Landroid/view/InsetsSourceControl$Array;

    move-result-object p1

    return-object p1
.end method
