.class public final Landroid/content/pm/SemSuspendDialogInfo$Builder;
.super Ljava/lang/Object;
.source "SemSuspendDialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/SemSuspendDialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDialogMessage:Ljava/lang/String;

.field private mDialogMessageResId:I

.field private mNeutralButtonTextResId:I

.field private mTitleResId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialogMessage(Landroid/content/pm/SemSuspendDialogInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mDialogMessageResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mTitleResId:I

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mTitleResId:I

    .line 134
    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mDialogMessageResId:I

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    .line 136
    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    return-void
.end method


# virtual methods
.method public build()Landroid/content/pm/SemSuspendDialogInfo;
    .registers 2

    .line 215
    new-instance v0, Landroid/content/pm/SemSuspendDialogInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/SemSuspendDialogInfo;-><init>(Landroid/content/pm/SemSuspendDialogInfo$Builder;)V

    return-object v0
.end method

.method public setMessage(I)Landroid/content/pm/SemSuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 168
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 169
    iput p1, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mDialogMessageResId:I

    .line 170
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Landroid/content/pm/SemSuspendDialogInfo$Builder;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 188
    const-string v0, "Message cannot be null or empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 189
    iput-object p1, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mDialogMessage:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setNeutralButtonText(I)Landroid/content/pm/SemSuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 203
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 204
    iput p1, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mNeutralButtonTextResId:I

    .line 205
    return-object p0
.end method

.method public setTitle(I)Landroid/content/pm/SemSuspendDialogInfo$Builder;
    .registers 4
    .param p1, "resId"    # I

    .line 147
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    const-string v1, "Invalid resource id provided"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    iput p1, p0, Landroid/content/pm/SemSuspendDialogInfo$Builder;->mTitleResId:I

    .line 149
    return-object p0
.end method
