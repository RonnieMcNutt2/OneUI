.class Landroid/telecom/Connection$CallFilteringCompletionInfo$1;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$CallFilteringCompletionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/Connection$CallFilteringCompletionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3854
    new-instance v0, Landroid/telecom/Connection$CallFilteringCompletionInfo;

    invoke-direct {v0, p1}, Landroid/telecom/Connection$CallFilteringCompletionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 3851
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$CallFilteringCompletionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Connection$CallFilteringCompletionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .registers 3
    .param p1, "size"    # I

    .line 3859
    new-array v0, p1, [Landroid/telecom/Connection$CallFilteringCompletionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 3851
    invoke-virtual {p0, p1}, Landroid/telecom/Connection$CallFilteringCompletionInfo$1;->newArray(I)[Landroid/telecom/Connection$CallFilteringCompletionInfo;

    move-result-object p1

    return-object p1
.end method
