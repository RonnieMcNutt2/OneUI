.class Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCollapsibleHeightReserved:I

.field open:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->mCollapsibleHeightReserved:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->mCollapsibleHeightReserved:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1235
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1223
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 1225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->mCollapsibleHeightReserved:I

    .line 1226
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/widget/ResolverDrawerLayout$SavedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 1219
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1220
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1230
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1231
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->mCollapsibleHeightReserved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    return-void
.end method
