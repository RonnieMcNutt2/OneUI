.class Landroid/view/inputmethod/SelectRangeGesture$1;
.super Ljava/lang/Object;
.source "SelectRangeGesture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SelectRangeGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/SelectRangeGesture;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/SelectRangeGesture;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 204
    new-instance v0, Landroid/view/inputmethod/SelectRangeGesture;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/inputmethod/SelectRangeGesture;-><init>(Landroid/os/Parcel;Landroid/view/inputmethod/SelectRangeGesture-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 201
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/SelectRangeGesture$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/SelectRangeGesture;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/inputmethod/SelectRangeGesture;
    .registers 3
    .param p1, "size"    # I

    .line 209
    new-array v0, p1, [Landroid/view/inputmethod/SelectRangeGesture;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 201
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/SelectRangeGesture$1;->newArray(I)[Landroid/view/inputmethod/SelectRangeGesture;

    move-result-object p1

    return-object p1
.end method
