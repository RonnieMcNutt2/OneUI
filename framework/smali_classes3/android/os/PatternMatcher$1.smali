.class Landroid/os/PatternMatcher$1;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PatternMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/PatternMatcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/PatternMatcher;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 191
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Landroid/os/PatternMatcher$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/PatternMatcher;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/PatternMatcher;
    .registers 3
    .param p1, "size"    # I

    .line 195
    new-array v0, p1, [Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 189
    invoke-virtual {p0, p1}, Landroid/os/PatternMatcher$1;->newArray(I)[Landroid/os/PatternMatcher;

    move-result-object p1

    return-object p1
.end method
