.class Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;
.super Ljava/lang/Object;
.source "OptionsSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/OptionsSipResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/uce/options/OptionsSipResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 165
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;-><init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsSipResponse-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/ims/internal/uce/options/OptionsSipResponse;
    .registers 3
    .param p1, "size"    # I

    .line 169
    new-array v0, p1, [Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;->newArray(I)[Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    move-result-object p1

    return-object p1
.end method
