.class Landroid/view/selectiontoolbar/WidgetInfo$1;
.super Ljava/lang/Object;
.source "WidgetInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/selectiontoolbar/WidgetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/selectiontoolbar/WidgetInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/selectiontoolbar/WidgetInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 212
    new-instance v0, Landroid/view/selectiontoolbar/WidgetInfo;

    invoke-direct {v0, p1}, Landroid/view/selectiontoolbar/WidgetInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 204
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/WidgetInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/selectiontoolbar/WidgetInfo;
    .registers 3
    .param p1, "size"    # I

    .line 207
    new-array v0, p1, [Landroid/view/selectiontoolbar/WidgetInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 204
    invoke-virtual {p0, p1}, Landroid/view/selectiontoolbar/WidgetInfo$1;->newArray(I)[Landroid/view/selectiontoolbar/WidgetInfo;

    move-result-object p1

    return-object p1
.end method
