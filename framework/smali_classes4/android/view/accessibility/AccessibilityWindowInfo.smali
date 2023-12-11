.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    }
.end annotation


# static fields
.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field private static final BOOLEAN_PROPERTY_PICTURE_IN_PICTURE:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_MAGNIFICATION_OVERLAY:I = 0x6

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_WINDOW_ID:I = -0x1

.field private static sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnchorId:J

.field private mBooleanProperties:I

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mDisplayId:I

.field private mId:I

.field private mLayer:I

.field private mLocales:Landroid/os/LocaleList;

.field private mParentId:I

.field private mRawType:I

.field private mRegionInScreen:Landroid/graphics/Region;

.field private mTaskId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTransitionTime:J

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 115
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 999
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 122
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 123
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 125
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 126
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 127
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 128
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 131
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 134
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 136
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    .line 139
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 122
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 123
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 125
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 126
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 127
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 128
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 131
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 134
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 136
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    .line 139
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    .line 155
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 156
    return-void
.end method

.method private clear()V
    .registers 5

    .line 871
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 872
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 873
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 874
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 875
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 876
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 877
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 878
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 879
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 880
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 881
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 882
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 883
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    .line 884
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    .line 887
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    .line 889
    return-void
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .line 898
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private init(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 744
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 745
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 746
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 747
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 748
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 749
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 750
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 751
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 752
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 753
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 754
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    .line 756
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 757
    :cond_36
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 758
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_4d

    .line 759
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    goto :goto_52

    .line 761
    :cond_4d
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 765
    :cond_52
    :goto_52
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 766
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    .line 769
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    .line 771
    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 781
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 787
    .local v0, "childCount":I
    if-lez v0, :cond_67

    .line 788
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_57

    .line 789
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 791
    :cond_57
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_58
    if-ge v1, v0, :cond_67

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 793
    .local v2, "childId":I
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 791
    .end local v2    # "childId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 797
    .end local v1    # "i":I
    :cond_67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 798
    const/4 v1, 0x0

    const-class v2, Landroid/os/LocaleList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/LocaleList;

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    .line 803
    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 619
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 620
    .local v0, "info":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v0, :cond_10

    .line 621
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    move-object v0, v1

    .line 623
    :cond_10
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_17

    .line 624
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 626
    :cond_17
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 641
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 642
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 643
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .line 910
    if-eqz p2, :cond_8

    .line 911
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    goto :goto_e

    .line 913
    :cond_8
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 915
    :goto_e
    return-void
.end method

.method public static setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2
    .param p0, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 653
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_6

    .line 654
    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 656
    :cond_6
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 921
    packed-switch p0, :pswitch_data_30

    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 938
    :pswitch_1d
    const-string v0, "TYPE_MAGNIFICATION_OVERLAY"

    return-object v0

    .line 935
    :pswitch_20
    const-string v0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object v0

    .line 932
    :pswitch_23
    const-string v0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object v0

    .line 929
    :pswitch_26
    const-string v0, "TYPE_SYSTEM"

    return-object v0

    .line 926
    :pswitch_29
    const-string v0, "TYPE_INPUT_METHOD"

    return-object v0

    .line 923
    :pswitch_2c
    const-string v0, "TYPE_APPLICATION"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public addChild(I)V
    .registers 5
    .param p1, "childId"    # I

    .line 537
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_b

    .line 538
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 540
    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    .line 541
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .registers 5
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 957
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v1, :cond_7f

    .line 960
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-ne v0, v1, :cond_77

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "changes":I
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 965
    or-int/lit8 v0, v0, 0x4

    .line 967
    :cond_19
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 968
    or-int/lit8 v0, v0, 0x8

    .line 970
    :cond_25
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v1, v2, :cond_2d

    .line 971
    or-int/lit8 v0, v0, 0x10

    .line 973
    :cond_2d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 974
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_3a

    .line 975
    or-int/lit8 v0, v0, 0x20

    .line 977
    :cond_3a
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 978
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_47

    .line 979
    or-int/lit8 v0, v0, 0x40

    .line 981
    :cond_47
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 982
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_54

    .line 983
    or-int/lit16 v0, v0, 0x80

    .line 985
    :cond_54
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 986
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_62

    .line 987
    or-int/lit16 v0, v0, 0x400

    .line 989
    :cond_62
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v2, :cond_6a

    .line 990
    or-int/lit16 v0, v0, 0x100

    .line 992
    :cond_6a
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 993
    or-int/lit16 v0, v0, 0x200

    .line 996
    :cond_76
    return v0

    .line 961
    .end local v0    # "changes":I
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not same window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 812
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 813
    return v0

    .line 815
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 816
    return v1

    .line 818
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 819
    return v1

    .line 821
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 822
    .local v2, "other":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v4, v2, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0
.end method

.method public getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11

    .line 297
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_12

    goto :goto_25

    .line 303
    :cond_12
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 304
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 300
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 427
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5
    .param p1, "index"    # I

    .line 518
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_1b

    .line 521
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 522
    const/4 v0, 0x0

    return-object v0

    .line 524
    :cond_b
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 525
    .local v0, "childId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 526
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v1, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    return-object v2

    .line 519
    .end local v0    # "childId":I
    .end local v1    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getChildCount()I
    .registers 2

    .line 508
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 561
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .line 352
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public getLayer()I
    .registers 2

    .line 236
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .registers 2

    .line 606
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 4

    .line 328
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_a

    goto :goto_17

    .line 331
    :cond_a
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 332
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1

    .line 329
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :cond_17
    :goto_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegionInScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 406
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 407
    return-void
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 257
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11
    .param p1, "prefetchingStrategy"    # I

    .line 271
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 272
    const/4 v0, 0x0

    return-object v0

    .line 274
    :cond_7
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 275
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move v7, p1

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public getTaskId()I
    .registers 2

    .line 374
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTransitionTimeMillis()J
    .registers 3

    .line 586
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 807
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    .line 488
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 468
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .registers 2

    .line 319
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .line 669
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    .line 670
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_f

    .line 672
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 674
    :cond_f
    return-void
.end method

.method public refresh()Z
    .registers 6

    .line 686
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v2, :cond_b

    goto :goto_22

    .line 689
    :cond_b
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 690
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 692
    .local v2, "refreshedInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-nez v2, :cond_1b

    .line 693
    return v1

    .line 695
    :cond_1b
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 696
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 697
    return v4

    .line 687
    .end local v0    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local v2    # "refreshedInfo":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_22
    :goto_22
    return v1
.end method

.method public semGetRawType()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return v0
.end method

.method public semSetRawType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 225
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    .line 226
    return-void
.end method

.method public setAccessibilityFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 499
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 500
    return-void
.end method

.method public setActive(Z)V
    .registers 3
    .param p1, "active"    # Z

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 460
    return-void
.end method

.method public setAnchorId(J)V
    .registers 3
    .param p1, "anchorId"    # J

    .line 288
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 289
    return-void
.end method

.method public setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .line 397
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 398
    return-void
.end method

.method public setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 551
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 552
    return-void
.end method

.method public setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .line 479
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 480
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 363
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 364
    return-void
.end method

.method public setLayer(I)V
    .registers 2
    .param p1, "layer"    # I

    .line 248
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 249
    return-void
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .registers 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 597
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    .line 598
    return-void
.end method

.method public setParentId(I)V
    .registers 2
    .param p1, "parentId"    # I

    .line 343
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 344
    return-void
.end method

.method public setPictureInPicture(Z)V
    .registers 3
    .param p1, "pictureInPicture"    # Z

    .line 310
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    .line 311
    return-void
.end method

.method public setRegionInScreen(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "region"    # Landroid/graphics/Region;

    .line 417
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 418
    return-void
.end method

.method public setTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 385
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 386
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 177
    return-void
.end method

.method public setTransitionTimeMillis(J)V
    .registers 3
    .param p1, "transitionTime"    # J

    .line 575
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    .line 576
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 201
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "AccessibilityWindowInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    const-string/jumbo v1, "title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 830
    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 836
    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 837
    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 840
    const-string v1, ", transitionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 857
    const-string v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_ac

    move v2, v4

    goto :goto_ad

    :cond_ac
    move v2, v5

    :goto_ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 858
    const-string v1, ", isAnchored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_c0

    move v2, v4

    goto :goto_c1

    :cond_c0
    move v2, v5

    .line 859
    :goto_c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 860
    const-string v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v2, :cond_d5

    .line 861
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_d5

    goto :goto_d6

    :cond_d5
    move v4, v5

    .line 860
    :goto_d6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 863
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 707
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 708
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 710
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 711
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 715
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 716
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 717
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 719
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 720
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_40

    .line 721
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_55

    .line 723
    :cond_40
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v1

    .line 724
    .local v1, "childCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_48
    if-ge v2, v1, :cond_55

    .line 726
    invoke-virtual {v0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 730
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_55
    :goto_55
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 734
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    return-void
.end method
