.class Landroid/view/inputmethod/RemoveSpaceGesture$1;
.super Ljava/lang/Object;
.source "RemoveSpaceGesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoveSpaceGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/RemoveSpaceGesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/RemoveSpaceGesture;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 112
    new-instance v0, Landroid/view/inputmethod/RemoveSpaceGesture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/inputmethod/RemoveSpaceGesture;-><init>(Landroid/os/Parcel;Landroid/view/inputmethod/RemoveSpaceGesture-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/RemoveSpaceGesture$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/RemoveSpaceGesture;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/inputmethod/RemoveSpaceGesture;
    .registers 3
    .param p1, "size"    # I

    .line 117
    new-array v0, p1, [Landroid/view/inputmethod/RemoveSpaceGesture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/RemoveSpaceGesture$1;->newArray(I)[Landroid/view/inputmethod/RemoveSpaceGesture;

    move-result-object p1

    return-object p1
.end method
