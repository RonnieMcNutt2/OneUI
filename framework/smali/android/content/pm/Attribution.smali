.class public final Landroid/content/pm/Attribution;
.super Ljava/lang/Object;
.source "Attribution.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Attribution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLabel:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/content/pm/Attribution$1;

    invoke-direct {v0}, Landroid/content/pm/Attribution$1;-><init>()V

    sput-object v0, Landroid/content/pm/Attribution;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 124
    .local v1, "label":I
    iput-object v0, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    .line 125
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 127
    iput v1, p0, Landroid/content/pm/Attribution;->mLabel:I

    .line 128
    const-class v2, Landroid/annotation/IdRes;

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    .line 74
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 76
    iput p2, p0, Landroid/content/pm/Attribution;->mLabel:I

    .line 77
    const-class v0, Landroid/annotation/IdRes;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 81
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/content/pm/Attribution;->mLabel:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget-object v0, p0, Landroid/content/pm/Attribution;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v0, p0, Landroid/content/pm/Attribution;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
