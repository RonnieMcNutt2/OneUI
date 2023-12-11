.class Landroid/text/FontConfig$NamedFamilyList$1;
.super Ljava/lang/Object;
.source "FontConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig$NamedFamilyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/FontConfig$NamedFamilyList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$NamedFamilyList;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    sget-object v1, Landroid/text/FontConfig$FontFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/text/FontConfig$NamedFamilyList;

    invoke-direct {v2, v0, v1}, Landroid/text/FontConfig$NamedFamilyList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 758
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$NamedFamilyList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/FontConfig$NamedFamilyList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/text/FontConfig$NamedFamilyList;
    .registers 3
    .param p1, "size"    # I

    .line 770
    new-array v0, p1, [Landroid/text/FontConfig$NamedFamilyList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 758
    invoke-virtual {p0, p1}, Landroid/text/FontConfig$NamedFamilyList$1;->newArray(I)[Landroid/text/FontConfig$NamedFamilyList;

    move-result-object p1

    return-object p1
.end method
