.class Landroid/preference/ListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/preference/ListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/preference/ListPreference$SavedState;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 354
    new-instance v0, Landroid/preference/ListPreference$SavedState;

    invoke-direct {v0, p1}, Landroid/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 352
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/ListPreference$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/preference/ListPreference$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 358
    new-array v0, p1, [Landroid/preference/ListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 352
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference$SavedState$1;->newArray(I)[Landroid/preference/ListPreference$SavedState;

    move-result-object p1

    return-object p1
.end method
