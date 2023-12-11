.class Landroid/widget/SemExpandableListPosition;
.super Ljava/lang/Object;
.source "SemExpandableListPosition.java"


# static fields
.field public static final CHILD:I = 0x1

.field public static final GROUP:I = 0x2

.field private static final MAX_POOL_SIZE:I = 0x5

.field private static sPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SemExpandableListPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public childPos:I

.field flatListPos:I

.field public groupPos:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method private static getRecycledOrCreate()Landroid/widget/SemExpandableListPosition;
    .registers 3

    .line 121
    sget-object v0, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 123
    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SemExpandableListPosition;

    .line 127
    .local v1, "elp":Landroid/widget/SemExpandableListPosition;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    .line 128
    invoke-direct {v1}, Landroid/widget/SemExpandableListPosition;->resetState()V

    .line 129
    return-object v1

    .line 125
    .end local v1    # "elp":Landroid/widget/SemExpandableListPosition;
    :cond_19
    :try_start_19
    new-instance v1, Landroid/widget/SemExpandableListPosition;

    invoke-direct {v1}, Landroid/widget/SemExpandableListPosition;-><init>()V

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_20

    throw v1
.end method

.method static obtain(IIII)Landroid/widget/SemExpandableListPosition;
    .registers 5
    .param p0, "type"    # I
    .param p1, "groupPos"    # I
    .param p2, "childPos"    # I
    .param p3, "flatListPos"    # I

    .line 111
    invoke-static {}, Landroid/widget/SemExpandableListPosition;->getRecycledOrCreate()Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 112
    .local v0, "elp":Landroid/widget/SemExpandableListPosition;
    iput p0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    .line 113
    iput p1, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 114
    iput p2, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    .line 115
    iput p3, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 116
    return-object v0
.end method

.method static obtainChildPosition(II)Landroid/widget/SemExpandableListPosition;
    .registers 4
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 91
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainGroupPosition(I)Landroid/widget/SemExpandableListPosition;
    .registers 3
    .param p0, "groupPosition"    # I

    .line 87
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, v1}, Landroid/widget/SemExpandableListPosition;->obtain(IIII)Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    return-object v0
.end method

.method static obtainPosition(J)Landroid/widget/SemExpandableListPosition;
    .registers 5
    .param p0, "packedPosition"    # J

    .line 95
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_b
    invoke-static {}, Landroid/widget/SemExpandableListPosition;->getRecycledOrCreate()Landroid/widget/SemExpandableListPosition;

    move-result-object v0

    .line 100
    .local v0, "elp":Landroid/widget/SemExpandableListPosition;
    invoke-static {p0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    iput v1, v0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 101
    invoke-static {p0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionType(J)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    .line 102
    iput v2, v0, Landroid/widget/SemExpandableListPosition;->type:I

    .line 103
    invoke-static {p0, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v1

    iput v1, v0, Landroid/widget/SemExpandableListPosition;->childPos:I

    goto :goto_28

    .line 105
    :cond_25
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/SemExpandableListPosition;->type:I

    .line 107
    :goto_28
    return-object v0
.end method

.method private resetState()V
    .registers 2

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    .line 71
    iput v0, p0, Landroid/widget/SemExpandableListPosition;->childPos:I

    .line 72
    iput v0, p0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    .line 73
    iput v0, p0, Landroid/widget/SemExpandableListPosition;->type:I

    .line 74
    return-void
.end method


# virtual methods
.method getPackedPosition()J
    .registers 3

    .line 80
    iget v0, p0, Landroid/widget/SemExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 81
    iget v0, p0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    iget v1, p0, Landroid/widget/SemExpandableListPosition;->childPos:I

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    return-wide v0

    .line 83
    :cond_e
    iget v0, p0, Landroid/widget/SemExpandableListPosition;->groupPos:I

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public recycle()V
    .registers 4

    .line 133
    sget-object v0, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_11

    .line 135
    sget-object v1, Landroid/widget/SemExpandableListPosition;->sPool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_11
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
