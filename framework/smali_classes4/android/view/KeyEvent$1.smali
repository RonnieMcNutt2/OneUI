.class Landroid/view/KeyEvent$1;
.super Ljava/lang/Object;
.source "KeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/KeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyEvent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 3779
    invoke-static {p1}, Landroid/view/KeyEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 3775
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/KeyEvent;
    .registers 3
    .param p1, "size"    # I

    .line 3784
    new-array v0, p1, [Landroid/view/KeyEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 3775
    invoke-virtual {p0, p1}, Landroid/view/KeyEvent$1;->newArray(I)[Landroid/view/KeyEvent;

    move-result-object p1

    return-object p1
.end method
