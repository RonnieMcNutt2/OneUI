.class public abstract Landroid/widget/SemRemoteViewsAnimation;
.super Ljava/lang/Object;
.source "SemRemoteViewsAnimation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected final MAX_DURATION:J

.field protected mIsExpired:Z

.field protected mViewId:I


# direct methods
.method public static synthetic $r8$lambda$cPZkUfsJ88AyqSmraliTxdpOBw4(Landroid/widget/SemRemoteViewsAnimation;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->lambda$play$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "viewId"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsAnimation;->MAX_DURATION:J

    .line 53
    iput p1, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Landroid/widget/SemRemoteViewsAnimation;->MAX_DURATION:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mIsExpired:Z

    .line 62
    return-void
.end method

.method private synthetic lambda$play$0(Landroid/view/View;)V
    .registers 2
    .param p1, "root"    # Landroid/view/View;

    .line 91
    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->endAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract endAnimation(Landroid/view/View;)V
.end method

.method public play(Landroid/view/View;)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;

    .line 85
    if-nez p1, :cond_3

    .line 86
    return-void

    .line 89
    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/SemRemoteViewsAnimation;->startAnimation(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/widget/SemRemoteViewsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/widget/SemRemoteViewsAnimation$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SemRemoteViewsAnimation;Landroid/view/View;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method protected abstract startAnimation(Landroid/view/View;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/widget/SemRemoteViewsAnimation;->mIsExpired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 71
    return-void
.end method
