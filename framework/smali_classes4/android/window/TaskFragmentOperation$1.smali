.class Landroid/window/TaskFragmentOperation$1;
.super Ljava/lang/Object;
.source "TaskFragmentOperation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/TaskFragmentOperation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/TaskFragmentOperation;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    new-instance v0, Landroid/window/TaskFragmentOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/window/TaskFragmentOperation;-><init>(Landroid/os/Parcel;Landroid/window/TaskFragmentOperation-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentOperation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/TaskFragmentOperation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/window/TaskFragmentOperation;
    .registers 3
    .param p1, "size"    # I

    .line 158
    new-array v0, p1, [Landroid/window/TaskFragmentOperation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Landroid/window/TaskFragmentOperation$1;->newArray(I)[Landroid/window/TaskFragmentOperation;

    move-result-object p1

    return-object p1
.end method
