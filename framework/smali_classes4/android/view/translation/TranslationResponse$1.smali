.class Landroid/view/translation/TranslationResponse$1;
.super Ljava/lang/Object;
.source "TranslationResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/translation/TranslationResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/translation/TranslationResponse;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 328
    new-instance v0, Landroid/view/translation/TranslationResponse;

    invoke-direct {v0, p1}, Landroid/view/translation/TranslationResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 320
    invoke-virtual {p0, p1}, Landroid/view/translation/TranslationResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/translation/TranslationResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/translation/TranslationResponse;
    .registers 3
    .param p1, "size"    # I

    .line 323
    new-array v0, p1, [Landroid/view/translation/TranslationResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 320
    invoke-virtual {p0, p1}, Landroid/view/translation/TranslationResponse$1;->newArray(I)[Landroid/view/translation/TranslationResponse;

    move-result-object p1

    return-object p1
.end method
