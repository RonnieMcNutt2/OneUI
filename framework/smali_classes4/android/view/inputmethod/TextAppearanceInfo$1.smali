.class Landroid/view/inputmethod/TextAppearanceInfo$1;
.super Ljava/lang/Object;
.source "TextAppearanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/TextAppearanceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/inputmethod/TextAppearanceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/TextAppearanceInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 312
    new-instance v0, Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/TextAppearanceInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 309
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextAppearanceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/inputmethod/TextAppearanceInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/inputmethod/TextAppearanceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 317
    new-array v0, p1, [Landroid/view/inputmethod/TextAppearanceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 309
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/TextAppearanceInfo$1;->newArray(I)[Landroid/view/inputmethod/TextAppearanceInfo;

    move-result-object p1

    return-object p1
.end method
