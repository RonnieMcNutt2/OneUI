.class Landroid/text/style/SuggestionRangeSpan$1;
.super Ljava/lang/Object;
.source "SuggestionRangeSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/SuggestionRangeSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/style/SuggestionRangeSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/text/style/SuggestionRangeSpan;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 47
    new-instance v0, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/SuggestionRangeSpan;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/text/style/SuggestionRangeSpan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/text/style/SuggestionRangeSpan;
    .registers 3
    .param p1, "size"    # I

    .line 52
    new-array v0, p1, [Landroid/text/style/SuggestionRangeSpan;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/text/style/SuggestionRangeSpan$1;->newArray(I)[Landroid/text/style/SuggestionRangeSpan;

    move-result-object p1

    return-object p1
.end method
