.class Landroid/hardware/scontext/SContextMotion$1;
.super Ljava/lang/Object;
.source "SContextMotion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/scontext/SContextMotion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextMotion;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    new-instance v0, Landroid/hardware/scontext/SContextMotion;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextMotion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextMotion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextMotion;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextMotion;
    .registers 3
    .param p1, "size"    # I

    .line 107
    new-array v0, p1, [Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextMotion$1;->newArray(I)[Landroid/hardware/scontext/SContextMotion;

    move-result-object p1

    return-object p1
.end method
