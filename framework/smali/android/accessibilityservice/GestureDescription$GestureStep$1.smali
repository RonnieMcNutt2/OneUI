.class Landroid/accessibilityservice/GestureDescription$GestureStep$1;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription$GestureStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/accessibilityservice/GestureDescription$GestureStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/GestureDescription$GestureStep;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 550
    new-instance v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v0, p1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 548
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/GestureDescription$GestureStep;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/accessibilityservice/GestureDescription$GestureStep;
    .registers 3
    .param p1, "size"    # I

    .line 554
    new-array v0, p1, [Landroid/accessibilityservice/GestureDescription$GestureStep;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 548
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;->newArray(I)[Landroid/accessibilityservice/GestureDescription$GestureStep;

    move-result-object p1

    return-object p1
.end method
