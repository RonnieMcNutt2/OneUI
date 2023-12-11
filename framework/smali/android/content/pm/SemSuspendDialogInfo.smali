.class public final Landroid/content/pm/SemSuspendDialogInfo;
.super Ljava/lang/Object;
.source "SemSuspendDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SemSuspendDialogInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SemSuspendDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final ID_NULL:I


# instance fields
.field private final mDialogMessage:Ljava/lang/String;

.field private final mDialogMessageResId:I

.field private final mNeutralButtonTextResId:I

.field private final mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/content/pm/SemSuspendDialogInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SemSuspendDialogInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SemSuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/SemSuspendDialogInfo$Builder;)V
    .registers 3
    .param p1, "b"    # Landroid/content/pm/SemSuspendDialogInfo$Builder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    .line 124
    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    .line 125
    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessage(Landroid/content/pm/SemSuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    .line 127
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SemSuspendDialogInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SemSuspendDialogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method getDialogMessage()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method getDialogMessageResId()I
    .registers 2

    .line 70
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    return v0
.end method

.method getNeutralButtonTextResId()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    return v0
.end method

.method getTitleResId()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 94
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
