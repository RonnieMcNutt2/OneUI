.class Landroid/content/IntentFilter$1;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/IntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/IntentFilter;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2813
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2811
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/IntentFilter;
    .registers 3
    .param p1, "size"    # I

    .line 2817
    new-array v0, p1, [Landroid/content/IntentFilter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2811
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter$1;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method
