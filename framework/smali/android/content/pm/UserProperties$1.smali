.class Landroid/content/pm/UserProperties$1;
.super Ljava/lang/Object;
.source "UserProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/UserProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/UserProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/UserProperties;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 834
    new-instance v0, Landroid/content/pm/UserProperties;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/UserProperties;-><init>(Landroid/os/Parcel;Landroid/content/pm/UserProperties-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Landroid/content/pm/UserProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/UserProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/UserProperties;
    .registers 3
    .param p1, "size"    # I

    .line 837
    new-array v0, p1, [Landroid/content/pm/UserProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 832
    invoke-virtual {p0, p1}, Landroid/content/pm/UserProperties$1;->newArray(I)[Landroid/content/pm/UserProperties;

    move-result-object p1

    return-object p1
.end method
