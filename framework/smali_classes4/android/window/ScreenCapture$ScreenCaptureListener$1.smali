.class Landroid/window/ScreenCapture$ScreenCaptureListener$1;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture$ScreenCaptureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/ScreenCapture$ScreenCaptureListener;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/window/ScreenCapture$ScreenCaptureListener;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 754
    new-instance v0, Landroid/window/ScreenCapture$ScreenCaptureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/window/ScreenCapture$ScreenCaptureListener;-><init>(Landroid/os/Parcel;Landroid/window/ScreenCapture$ScreenCaptureListener-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 751
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$ScreenCaptureListener$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/ScreenCapture$ScreenCaptureListener;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/window/ScreenCapture$ScreenCaptureListener;
    .registers 3
    .param p1, "size"    # I

    .line 759
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/window/ScreenCapture$ScreenCaptureListener;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 751
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$ScreenCaptureListener$1;->newArray(I)[Landroid/window/ScreenCapture$ScreenCaptureListener;

    move-result-object p1

    return-object p1
.end method
