.class Landroid/app/RemoteAction$1;
.super Ljava/lang/Object;
.source "RemoteAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/RemoteAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/RemoteAction;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    new-instance v0, Landroid/app/RemoteAction;

    invoke-direct {v0, p1}, Landroid/app/RemoteAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/RemoteAction;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/RemoteAction;
    .registers 3
    .param p1, "size"    # I

    .line 181
    new-array v0, p1, [Landroid/app/RemoteAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction$1;->newArray(I)[Landroid/app/RemoteAction;

    move-result-object p1

    return-object p1
.end method
