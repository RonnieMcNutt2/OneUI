.class Landroid/widget/SemHorizontalAbsListView$SavedState$1;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/SemHorizontalAbsListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemHorizontalAbsListView$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2476
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/SemHorizontalAbsListView$SavedState-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2473
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemHorizontalAbsListView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/widget/SemHorizontalAbsListView$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 2481
    new-array v0, p1, [Landroid/widget/SemHorizontalAbsListView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2473
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView$SavedState$1;->newArray(I)[Landroid/widget/SemHorizontalAbsListView$SavedState;

    move-result-object p1

    return-object p1
.end method
