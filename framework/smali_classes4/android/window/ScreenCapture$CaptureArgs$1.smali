.class Landroid/window/ScreenCapture$CaptureArgs$1;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture$CaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/ScreenCapture$CaptureArgs;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/ScreenCapture$CaptureArgs;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 510
    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/os/Parcel;Landroid/window/ScreenCapture$CaptureArgs-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 507
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/ScreenCapture$CaptureArgs;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/window/ScreenCapture$CaptureArgs;
    .registers 3
    .param p1, "size"    # I

    .line 515
    new-array v0, p1, [Landroid/window/ScreenCapture$CaptureArgs;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 507
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs$1;->newArray(I)[Landroid/window/ScreenCapture$CaptureArgs;

    move-result-object p1

    return-object p1
.end method
