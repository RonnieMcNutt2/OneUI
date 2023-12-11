.class public Lcom/android/internal/content/ReferrerIntent;
.super Landroid/content/Intent;
.source "ReferrerIntent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mReferrer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lcom/android/internal/content/ReferrerIntent$1;

    invoke-direct {v0}, Lcom/android/internal/content/ReferrerIntent$1;-><init>()V

    sput-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "referrer"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 35
    iput-object p2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/content/ReferrerIntent;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    instance-of v1, p1, Lcom/android/internal/content/ReferrerIntent;

    if-nez v1, :cond_8

    goto :goto_1d

    .line 62
    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/android/internal/content/ReferrerIntent;

    .line 63
    .local v1, "other":Lcom/android/internal/content/ReferrerIntent;
    invoke-virtual {p0, v1}, Lcom/android/internal/content/ReferrerIntent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    .line 60
    .end local v1    # "other":Lcom/android/internal/content/ReferrerIntent;
    :cond_1d
    :goto_1d
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 68
    const/16 v0, 0x11

    .line 69
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/android/internal/content/ReferrerIntent;->filterHashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 71
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 39
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lcom/android/internal/content/ReferrerIntent;->mReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
