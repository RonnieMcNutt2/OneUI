.class public final Landroid/window/TransitionInfo$Change;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowEnterPip:Z

.field private mBackgroundColor:I

.field private final mChangeEndOutsets:Landroid/graphics/Rect;

.field private mChangeLeash:Landroid/view/SurfaceControl;

.field private final mChangeStartOutsets:Landroid/graphics/Rect;

.field private mChangeTransitMode:I

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContainer:Landroid/window/WindowContainerToken;

.field private final mEndAbsBounds:Landroid/graphics/Rect;

.field private mEndDisplayId:I

.field private mEndFixedRotation:I

.field private final mEndRelOffset:Landroid/graphics/Point;

.field private mEndRotation:I

.field private mFadeInOutRotationNeeded:Z

.field private mFlags:I

.field private mForceHidingTransit:I

.field private mFreeformStashScale:F

.field private final mInsetsForRecentsTransition:Landroid/graphics/Rect;

.field private mIsEnteringPinnedMode:Z

.field private mIsInSplitActivityMode:Z

.field private mIsPopOverAnimationNeeded:Z

.field private mIsTransitionWithDim:Z

.field private mLastParent:Landroid/window/WindowContainerToken;

.field private final mLeash:Landroid/view/SurfaceControl;

.field private mMinimizeAnimState:I

.field private final mMinimizePoint:Landroid/graphics/PointF;

.field private mMode:I

.field private mParent:Landroid/window/WindowContainerToken;

.field private mResumedAffordance:Z

.field private mRotationAnimation:I

.field private mSnapshot:Landroid/view/SurfaceControl;

.field private mSnapshotLuma:F

.field private final mStartAbsBounds:Landroid/graphics/Rect;

.field private mStartDisplayId:I

.field private mStartRotation:I

.field private mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChangeLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .registers 2

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;
    .registers 1

    invoke-direct {p0}, Landroid/window/TransitionInfo$Change;->localRemoteCopy()Landroid/window/TransitionInfo$Change;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1501
    new-instance v0, Landroid/window/TransitionInfo$Change$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$Change$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 829
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 830
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 831
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 832
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 833
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 835
    const/4 v5, -0x1

    iput v5, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 836
    iput v5, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 837
    iput v5, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 838
    iput v5, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 843
    iput v5, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 844
    iput v5, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 846
    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 850
    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 858
    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 859
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 861
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    .line 862
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    .line 880
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 881
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    .line 910
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    .line 914
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    .line 922
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    .line 931
    sget-object v8, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/WindowContainerToken;

    iput-object v8, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 932
    sget-object v8, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/WindowContainerToken;

    iput-object v8, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 933
    sget-object v8, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/WindowContainerToken;

    iput-object v8, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    .line 934
    new-instance v8, Landroid/view/SurfaceControl;

    invoke-direct {v8}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v8, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 935
    invoke-virtual {v8, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 938
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 939
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 940
    invoke-virtual {v3, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    .line 941
    sget-object v1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 942
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 943
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 945
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 946
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 948
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 950
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    .line 953
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_ec

    .line 954
    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    .line 956
    :cond_ec
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_106

    .line 957
    sget-object v1, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 959
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 960
    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 962
    :cond_106
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v1, :cond_110

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    .line 965
    :cond_110
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_11d

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 967
    invoke-virtual {v7, p1}, Landroid/graphics/PointF;->readFromParcel(Landroid/os/Parcel;)V

    .line 970
    :cond_11d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    .line 978
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_133

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    .line 982
    :cond_133
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    .line 985
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    .line 988
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    .line 991
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 994
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo$Change-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 829
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 830
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    .line 831
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    .line 832
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    .line 833
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 835
    const/4 v2, -0x1

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 836
    iput v2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 837
    iput v2, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 838
    iput v2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 843
    iput v2, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 844
    iput v2, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 846
    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 850
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    .line 858
    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 859
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 861
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    .line 862
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    .line 880
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 881
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    .line 910
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    .line 914
    iput v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    .line 922
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    .line 926
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    .line 927
    iput-object p2, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    .line 928
    return-void
.end method

.method private localRemoteCopy()Landroid/window/TransitionInfo$Change;
    .registers 6

    .line 997
    new-instance v0, Landroid/window/TransitionInfo$Change;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    new-instance v2, Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    const-string v4, "localRemote"

    invoke-direct {v2, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 998
    .local v0, "out":Landroid/window/TransitionInfo$Change;
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 999
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    .line 1000
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 1001
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 1002
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1003
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1004
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    .line 1005
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1006
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 1007
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 1008
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 1009
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 1010
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 1011
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 1012
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 1013
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 1014
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_66

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_67

    :cond_66
    move-object v1, v2

    :goto_67
    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1015
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    .line 1017
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_78

    .line 1018
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1020
    :cond_78
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_9d

    .line 1021
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_88

    .line 1022
    new-instance v2, Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-direct {v2, v1, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_89

    :cond_88
    nop

    :goto_89
    iput-object v2, v0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 1023
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 1024
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1025
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1027
    :cond_9d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v1, :cond_a5

    .line 1028
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    .line 1030
    :cond_a5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_b4

    .line 1031
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 1032
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1035
    :cond_b4
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    .line 1038
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    .line 1043
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_c4

    .line 1044
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    .line 1047
    :cond_c4
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    .line 1050
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    .line 1053
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    .line 1056
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1059
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1517
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowEnterPip()Z
    .registers 2

    .line 1234
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 1268
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    return v0
.end method

.method public getChangeEndOutsets()Landroid/graphics/Rect;
    .registers 2

    .line 1328
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getChangeLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 1297
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getChangeStartOutsets()Landroid/graphics/Rect;
    .registers 2

    .line 1324
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getChangeTransitMode()I
    .registers 2

    .line 1306
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    return v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 1290
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getContainer()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1152
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getEndAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1210
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getEndDisplayId()I
    .registers 2

    .line 1242
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    return v0
.end method

.method public getEndFixedRotation()I
    .registers 2

    .line 1257
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    return v0
.end method

.method public getEndRelOffset()Landroid/graphics/Point;
    .registers 2

    .line 1218
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    return-object v0
.end method

.method public getEndRotation()I
    .registers 2

    .line 1252
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 1182
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    return v0
.end method

.method public getForceHidingTransit()I
    .registers 2

    .line 1408
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    return v0
.end method

.method public getFreeformStashScale()F
    .registers 2

    .line 1397
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    return v0
.end method

.method public getInsetsForRecentsTransition()Landroid/graphics/Rect;
    .registers 2

    .line 1429
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLastParent()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1172
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 1224
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getMinimizeAnimState()I
    .registers 2

    .line 1348
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    return v0
.end method

.method public getMinimizePoint()Landroid/graphics/PointF;
    .registers 2

    .line 1357
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .line 1177
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    return v0
.end method

.method public getParent()Landroid/window/WindowContainerToken;
    .registers 2

    .line 1161
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    return-object v0
.end method

.method public getPopOverAnimationNeeded()Z
    .registers 2

    .line 1418
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    return v0
.end method

.method public getResumedAffordance()Z
    .registers 2

    .line 897
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    return v0
.end method

.method public getRotationAnimation()I
    .registers 2

    .line 1262
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    return v0
.end method

.method public getSnapshot()Landroid/view/SurfaceControl;
    .registers 2

    .line 1274
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSnapshotLuma()F
    .registers 2

    .line 1279
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    return v0
.end method

.method public getSplitActivityMode()Z
    .registers 2

    .line 1377
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsInSplitActivityMode:Z

    return v0
.end method

.method public getStartAbsBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1201
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStartDisplayId()I
    .registers 2

    .line 1238
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    return v0
.end method

.method public getStartRotation()I
    .registers 2

    .line 1247
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    return v0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 1230
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public hasAllFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 1192
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasChangeEndOutsets()Z
    .registers 2

    .line 1337
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public hasChangeStartOutsets()Z
    .registers 2

    .line 1332
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_1b

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public hasFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 1187
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isEnteringPinnedMode()Z
    .registers 2

    .line 1387
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    return v0
.end method

.method public isFadeInOutRotationNeeded()Z
    .registers 2

    .line 1367
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    return v0
.end method

.method public isTransitionWithDim()Z
    .registers 2

    .line 875
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    return v0
.end method

.method public setAllowEnterPip(Z)V
    .registers 2
    .param p1, "allowEnterPip"    # Z

    .line 1110
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    .line 1111
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2
    .param p1, "backgroundColor"    # I

    .line 1140
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    .line 1141
    return-void
.end method

.method public setChangeEndOutsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "endOutsets"    # Landroid/graphics/Rect;

    .line 1320
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1321
    return-void
.end method

.method public setChangeLeash(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "changeLeash"    # Landroid/view/SurfaceControl;

    .line 1301
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 1302
    return-void
.end method

.method public setChangeStartOutsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "startOutsets"    # Landroid/graphics/Rect;

    .line 1315
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1316
    return-void
.end method

.method public setChangeTransitMode(I)V
    .registers 2
    .param p1, "changeTransitMode"    # I

    .line 1310
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    .line 1311
    return-void
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 1284
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1285
    return-void
.end method

.method public setDisplayId(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1115
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    .line 1116
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    .line 1117
    return-void
.end method

.method public setEndAbsBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1092
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1093
    return-void
.end method

.method public setEndFixedRotation(I)V
    .registers 2
    .param p1, "endFixedRotation"    # I

    .line 1127
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    .line 1128
    return-void
.end method

.method public setEndRelOffset(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 1097
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 1098
    return-void
.end method

.method public setEnteringPinnedMode(Z)V
    .registers 2
    .param p1, "enteringPinnedMode"    # Z

    .line 1383
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    .line 1384
    return-void
.end method

.method public setFadeInOutRotationNeeded()V
    .registers 2

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    .line 1364
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1082
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    .line 1083
    return-void
.end method

.method public setForceHidingTransit(I)V
    .registers 2
    .param p1, "forceHidingTransit"    # I

    .line 1403
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    .line 1404
    return-void
.end method

.method public setFreeformStashScale(F)V
    .registers 2
    .param p1, "freeformStashScale"    # F

    .line 1393
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    .line 1394
    return-void
.end method

.method public setInsetsForRecentsTransition(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1424
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1425
    return-void
.end method

.method public setLastParent(Landroid/window/WindowContainerToken;)V
    .registers 2
    .param p1, "lastParent"    # Landroid/window/WindowContainerToken;

    .line 1072
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    .line 1073
    return-void
.end method

.method public setMinimizeAnimState(I)V
    .registers 2
    .param p1, "minimizeAnimState"    # I

    .line 1344
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    .line 1345
    return-void
.end method

.method public setMinimizePoint(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "minimizePoint"    # Landroid/graphics/PointF;

    .line 1352
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1353
    return-void
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 1077
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    .line 1078
    return-void
.end method

.method public setParent(Landroid/window/WindowContainerToken;)V
    .registers 2
    .param p1, "parent"    # Landroid/window/WindowContainerToken;

    .line 1064
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    .line 1065
    return-void
.end method

.method public setPopOverAnimationNeeded(Z)V
    .registers 2
    .param p1, "popOverAnimationNeeded"    # Z

    .line 1414
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    .line 1415
    return-void
.end method

.method public setResumedAffordance(Z)V
    .registers 2
    .param p1, "resumedAffordance"    # Z

    .line 893
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    .line 894
    return-void
.end method

.method public setRotation(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1121
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    .line 1122
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    .line 1123
    return-void
.end method

.method public setRotationAnimation(I)V
    .registers 2
    .param p1, "anim"    # I

    .line 1135
    iput p1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    .line 1136
    return-void
.end method

.method public setSnapshot(Landroid/view/SurfaceControl;F)V
    .registers 3
    .param p1, "snapshot"    # Landroid/view/SurfaceControl;
    .param p2, "luma"    # F

    .line 1145
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    .line 1146
    iput p2, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    .line 1147
    return-void
.end method

.method public setSplitActivityMode(Z)V
    .registers 2
    .param p1, "splitActivityMode"    # Z

    .line 1373
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsInSplitActivityMode:Z

    .line 1374
    return-void
.end method

.method public setStartAbsBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1087
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1088
    return-void
.end method

.method public setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1105
    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1106
    return-void
.end method

.method public setTransitionWithDim(Z)V
    .registers 2
    .param p1, "isTransitionWithDim"    # Z

    .line 870
    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    .line 871
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1523
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1524
    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_39

    .line 1527
    const-string v1, " p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1529
    :cond_39
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_47

    .line 1530
    const-string v1, " leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1532
    :cond_47
    const-string v1, " sb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1533
    const-string v1, " eb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1534
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_67

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_71

    .line 1535
    :cond_67
    const-string v1, " eo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1537
    :cond_71
    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    const-string v3, "->"

    if-eq v1, v2, :cond_85

    .line 1539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    :cond_85
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1542
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    if-eq v1, v2, :cond_ac

    .line 1543
    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1545
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1547
    :cond_ac
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_bb

    .line 1548
    const-string v1, " endFixedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1550
    :cond_bb
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_c9

    .line 1551
    const-string v1, " snapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1553
    :cond_c9
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_d7

    .line 1554
    const-string v1, " lastParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1557
    :cond_d7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_135

    .line 1558
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_ea

    .line 1559
    const-string v1, " changeLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1561
    :cond_ea
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    if-eqz v1, :cond_f9

    .line 1562
    const-string v1, " cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1564
    :cond_f9
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->hasChangeStartOutsets()Z

    move-result v1

    if-eqz v1, :cond_117

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cso="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    :cond_117
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->hasChangeEndOutsets()Z

    move-result v1

    if-eqz v1, :cond_135

    .line 1568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ceo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    :cond_135
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    if-eqz v1, :cond_144

    .line 1573
    const-string v1, " fht="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1575
    :cond_144
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_151

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    if-eqz v1, :cond_151

    .line 1576
    const-string v1, " enter_pip=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    :cond_151
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_WITH_DIM:Z

    const-string/jumbo v2, "true"

    if-eqz v1, :cond_165

    .line 1579
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    if-eqz v1, :cond_165

    .line 1580
    const-string v1, " dim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    :cond_165
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    if-eqz v1, :cond_174

    .line 1584
    const-string v1, " fade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1587
    :cond_174
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    if-eqz v1, :cond_181

    .line 1588
    const-string v1, " resumedAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1592
    :cond_181
    const-string v1, " inset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1595
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1436
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1437
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1438
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1439
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1440
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1441
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1442
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1443
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1444
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1445
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1446
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1447
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1449
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1450
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1454
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1455
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1457
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_6d

    .line 1458
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1460
    :cond_6d
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_85

    .line 1461
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1462
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1464
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1466
    :cond_85
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v0, :cond_8e

    .line 1467
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1469
    :cond_8e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v0, :cond_9c

    .line 1470
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1471
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1474
    :cond_9c
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1477
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1482
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_af

    .line 1483
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1486
    :cond_af
    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1489
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1492
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1495
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1498
    return-void
.end method
