.class Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay$1;
.super Ljava/lang/Object;
.source "SContextEnvironmentAdaptiveDisplay.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 190
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    .registers 3
    .param p1, "size"    # I

    .line 199
    new-array v0, p1, [Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 190
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay$1;->newArray(I)[Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    move-result-object p1

    return-object p1
.end method
