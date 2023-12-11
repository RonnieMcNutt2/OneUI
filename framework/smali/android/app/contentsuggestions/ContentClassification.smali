.class public final Landroid/app/contentsuggestions/ContentClassification;
.super Ljava/lang/Object;
.source "ContentClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contentsuggestions/ContentClassification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClassificationId:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/contentsuggestions/ContentClassification$1;

    invoke-direct {v0}, Landroid/app/contentsuggestions/ContentClassification$1;-><init>()V

    sput-object v0, Landroid/app/contentsuggestions/ContentClassification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "classificationId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/app/contentsuggestions/ContentClassification;->mClassificationId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/app/contentsuggestions/ContentClassification;->mExtras:Landroid/os/Bundle;

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentClassification;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentClassification;->mClassificationId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 70
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentClassification;->mClassificationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroid/app/contentsuggestions/ContentClassification;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method
