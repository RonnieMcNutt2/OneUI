.class Landroid/os/LocaleList$1;
.super Ljava/lang/Object;
.source "LocaleList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/LocaleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/LocaleList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/LocaleList;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 241
    invoke-virtual {p0, p1}, Landroid/os/LocaleList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/LocaleList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/LocaleList;
    .registers 3
    .param p1, "size"    # I

    .line 249
    new-array v0, p1, [Landroid/os/LocaleList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 241
    invoke-virtual {p0, p1}, Landroid/os/LocaleList$1;->newArray(I)[Landroid/os/LocaleList;

    move-result-object p1

    return-object p1
.end method
