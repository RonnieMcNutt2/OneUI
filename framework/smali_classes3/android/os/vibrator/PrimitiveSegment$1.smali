.class Landroid/os/vibrator/PrimitiveSegment$1;
.super Ljava/lang/Object;
.source "PrimitiveSegment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/PrimitiveSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/vibrator/PrimitiveSegment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/PrimitiveSegment;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 165
    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1}, Landroid/os/vibrator/PrimitiveSegment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/vibrator/PrimitiveSegment;
    .registers 3
    .param p1, "size"    # I

    .line 170
    new-array v0, p1, [Landroid/os/vibrator/PrimitiveSegment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/vibrator/PrimitiveSegment$1;->newArray(I)[Landroid/os/vibrator/PrimitiveSegment;

    move-result-object p1

    return-object p1
.end method
