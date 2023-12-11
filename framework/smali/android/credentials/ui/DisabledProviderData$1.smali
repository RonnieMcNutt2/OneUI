.class Landroid/credentials/ui/DisabledProviderData$1;
.super Ljava/lang/Object;
.source "DisabledProviderData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/ui/DisabledProviderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/credentials/ui/DisabledProviderData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/credentials/ui/DisabledProviderData;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    new-instance v0, Landroid/credentials/ui/DisabledProviderData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/credentials/ui/DisabledProviderData;-><init>(Landroid/os/Parcel;Landroid/credentials/ui/DisabledProviderData-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Landroid/credentials/ui/DisabledProviderData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/credentials/ui/DisabledProviderData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/credentials/ui/DisabledProviderData;
    .registers 3
    .param p1, "size"    # I

    .line 59
    new-array v0, p1, [Landroid/credentials/ui/DisabledProviderData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Landroid/credentials/ui/DisabledProviderData$1;->newArray(I)[Landroid/credentials/ui/DisabledProviderData;

    move-result-object p1

    return-object p1
.end method
