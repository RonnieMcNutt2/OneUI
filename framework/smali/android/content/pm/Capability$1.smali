.class Landroid/content/pm/Capability$1;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/Capability;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/Capability;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Landroid/content/pm/Capability;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/Capability;-><init>(Landroid/os/Parcel;Landroid/content/pm/Capability-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/pm/Capability$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/Capability;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/Capability;
    .registers 3
    .param p1, "size"    # I

    .line 104
    new-array v0, p1, [Landroid/content/pm/Capability;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Landroid/content/pm/Capability$1;->newArray(I)[Landroid/content/pm/Capability;

    move-result-object p1

    return-object p1
.end method
