.class public final Landroid/window/WindowContainerTransaction;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowContainerTransaction$HierarchyOp;,
        Landroid/window/WindowContainerTransaction$Change;,
        Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;,
        Landroid/window/WindowContainerTransaction$ChangeTransitRequest;
    }
.end annotation


# static fields
.field public static final CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT:I = 0x1

.field public static final CHANGE_TRANSIT_REQUEST_SPLIT_TO_FULLSCREEN:I = 0x2

.field public static final CHANGE_TRANSIT_REQUEST_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/WindowContainerTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_TYPE_START_INTENTS:I = 0x1

.field public static final TRANSACTION_TYPE_START_TASKS:I = 0x3

.field public static final TRANSACTION_TYPE_START_TASKS_FROM_RECENT:I = 0x5

.field public static final TRANSACTION_TYPE_START_TASK_AND_INTENT:I = 0x2

.field public static final TRANSACTION_TYPE_UNDEFINED:I = 0x0

.field public static final TRANSACTION_TYPE_UPDATE_DESKTOP_MODE_ACTIVE:I = 0x4


# instance fields
.field private mChangeTransitionRequest:I

.field private final mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mDismissSplit:Z

.field private mDisplayChangeTransitionReason:Ljava/lang/String;

.field private mDisplayIdForChangeTransition:I

.field private mErrorCallbackToken:Landroid/os/IBinder;

.field private final mHierarchyOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionChange:Z

.field private mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1297
    new-instance v0, Landroid/window/WindowContainerTransaction$1;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction$1;-><init>()V

    sput-object v0, Landroid/window/WindowContainerTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 98
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 102
    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 133
    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    .line 144
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 98
    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 102
    iput-boolean v2, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 133
    iput v2, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    .line 138
    const/4 v2, -0x1

    iput v2, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    .line 147
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 148
    sget-object v0, Landroid/window/WindowContainerTransaction$HierarchyOp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 163
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_52

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    .line 166
    :cond_52
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_62

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    .line 171
    :cond_62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/WindowContainerTransaction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/WindowContainerTransaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static changeTransitRequestToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "changeTransitRequest"    # I

    .line 122
    packed-switch p0, :pswitch_data_12

    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :pswitch_8
    const-string v0, "CHANGE_TRANSIT_REQUEST_SPLIT_TO_FULLSCREEN"

    return-object v0

    .line 126
    :pswitch_b
    const-string v0, "CHANGE_TRANSIT_REQUEST_FULLSCREEN_TO_SPLIT"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "CHANGE_TRANSIT_REQUEST_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 174
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerTransaction$Change;

    .line 175
    .local v0, "out":Landroid/window/WindowContainerTransaction$Change;
    if-nez v0, :cond_15

    .line 176
    new-instance v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    move-object v0, v1

    .line 177
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_15
    return-object v0
.end method


# virtual methods
.method public addInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;IILandroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 9
    .param p1, "receiver"    # Landroid/window/WindowContainerToken;
    .param p2, "owner"    # Landroid/os/IBinder;
    .param p3, "index"    # I
    .param p4, "type"    # I
    .param p5, "frame"    # Landroid/graphics/Rect;

    .line 808
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 810
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 812
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/InsetsFrameProvider;->setSource(I)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    .line 813
    invoke-virtual {v1, p5}, Landroid/view/InsetsFrameProvider;->setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;

    move-result-object v1

    .line 811
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 814
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 815
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    return-object p0
.end method

.method public addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "taskFragmentOperation"    # Landroid/window/TaskFragmentOperation;

    .line 912
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 917
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 918
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 920
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    return-object p0
.end method

.method public changeTransitionRequested()Z
    .registers 2

    .line 1148
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public clearAdjacentRoots(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "root"    # Landroid/window/WindowContainerToken;

    .line 996
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForClearAdjacentRoots(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-object p0
.end method

.method public clearAdjacentTaskFragments(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 768
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 770
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 771
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public clearLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 593
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    return-object p0
.end method

.method public createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "taskFragmentCreationParams"    # Landroid/window/TaskFragmentCreationParams;

    .line 678
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/window/TaskFragmentOperation$Builder;->setTaskFragmentCreationParams(Landroid/window/TaskFragmentCreationParams;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 682
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public deleteTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 692
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 694
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 695
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public describeContents()I
    .registers 2

    .line 1293
    const/4 v0, 0x0

    return v0
.end method

.method public displayChangeTransitionRequested()Z
    .registers 3

    .line 1231
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public finishActivity(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 866
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 869
    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 871
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    return-object p0
.end method

.method public getChangeTransitionRequest()I
    .registers 2

    .line 1153
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    return v0
.end method

.method public getChanges()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/window/WindowContainerTransaction$Change;",
            ">;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getDisplayChangeTransitionReason()Ljava/lang/String;
    .registers 2

    .line 1240
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIdForChangeTransition()I
    .registers 2

    .line 1235
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    return v0
.end method

.method public getErrorCallbackToken()Landroid/os/IBinder;
    .registers 2

    .line 1078
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getHierarchyOps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .registers 2

    .line 1084
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method public isDismissSplit()Z
    .registers 2

    .line 1133
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1062
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isStagePositionChanged()Z
    .registers 2

    .line 1123
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    return v0
.end method

.method public isStartIntentsType()Z
    .registers 3

    .line 1093
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public isStartTaskAndIntentType()Z
    .registers 3

    .line 1097
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isStartTasksFromRecentType()Z
    .registers 3

    .line 1113
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isStartTasksType()Z
    .registers 3

    .line 1101
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isUpdateDesktopModeActive()Z
    .registers 3

    .line 1107
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public merge(Landroid/window/WindowContainerTransaction;Z)V
    .registers 8
    .param p1, "other"    # Landroid/window/WindowContainerTransaction;
    .param p2, "transfer"    # Z

    .line 1028
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "n":I
    :goto_7
    if-ge v0, v1, :cond_34

    .line 1029
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 1030
    .local v2, "key":Landroid/os/IBinder;
    iget-object v3, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$Change;

    .line 1031
    .local v3, "existing":Landroid/window/WindowContainerTransaction$Change;
    if-nez v3, :cond_26

    .line 1032
    new-instance v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-direct {v4}, Landroid/window/WindowContainerTransaction$Change;-><init>()V

    move-object v3, v4

    .line 1033
    iget-object v4, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    :cond_26
    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v3, v4, p2}, Landroid/window/WindowContainerTransaction$Change;->merge(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 1028
    .end local v2    # "key":Landroid/os/IBinder;
    .end local v3    # "existing":Landroid/window/WindowContainerTransaction$Change;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1037
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_34
    const/4 v0, 0x0

    .restart local v0    # "i":I
    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .restart local v1    # "n":I
    :goto_3b
    if-ge v0, v1, :cond_5d

    .line 1038
    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    if-eqz p2, :cond_4a

    iget-object v3, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    goto :goto_57

    .line 1039
    :cond_4a
    new-instance v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget-object v4, p1, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowContainerTransaction$HierarchyOp;

    invoke-direct {v3, v4}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(Landroid/window/WindowContainerTransaction$HierarchyOp;)V

    .line 1038
    :goto_57
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1041
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_5d
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v0, :cond_70

    iget-object v1, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v1, :cond_70

    if-ne v0, v1, :cond_68

    goto :goto_70

    .line 1043
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t merge two WCTs with different error token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_70
    :goto_70
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    .line 1046
    invoke-interface {v0}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_7b

    .line 1047
    :cond_7a
    move-object v0, v1

    :goto_7b
    nop

    .line 1048
    .local v0, "taskFragmentOrganizerAsBinder":Landroid/os/IBinder;
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v2, :cond_85

    .line 1049
    invoke-interface {v2}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_86

    .line 1050
    :cond_85
    nop

    :goto_86
    nop

    .line 1051
    .local v1, "otherTaskFragmentOrganizerAsBinder":Landroid/os/IBinder;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1055
    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-eqz v2, :cond_92

    .line 1056
    goto :goto_94

    .line 1057
    :cond_92
    iget-object v2, p1, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    :goto_94
    iput-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 1058
    return-void

    .line 1052
    :cond_97
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t merge two WCTs from different TaskFragmentOrganizers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeInsetsSource(Landroid/window/WindowContainerToken;Landroid/os/IBinder;II)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "receiver"    # Landroid/window/WindowContainerToken;
    .param p2, "owner"    # Landroid/os/IBinder;
    .param p3, "index"    # I
    .param p4, "type"    # I

    .line 834
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 836
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsFrameProvider;

    invoke-direct {v1, p2, p3, p4}, Landroid/view/InsetsFrameProvider;-><init>(Ljava/lang/Object;II)V

    .line 837
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 839
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    return-object p0
.end method

.method public removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "containerToken"    # Landroid/window/WindowContainerToken;

    .line 617
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForRemoveTask(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    return-object p0
.end method

.method public reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "onTop"    # Z

    .line 488
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReorder(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    return-object p0
.end method

.method public reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "child"    # Landroid/window/WindowContainerToken;
    .param p2, "parent"    # Landroid/window/WindowContainerToken;
    .param p3, "onTop"    # Z

    .line 474
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 475
    if-nez p2, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 474
    :goto_e
    invoke-static {v1, v2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForReparent(Landroid/os/IBinder;Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    return-object p0
.end method

.method public reparentActivityToTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 729
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 731
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 733
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;
    .registers 13
    .param p1, "currentParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;
    .param p3, "windowingModes"    # [I
    .param p4, "activityTypes"    # [I
    .param p5, "onTop"    # Z

    .line 541
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    return-object v0
.end method

.method public reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;
    .registers 16
    .param p1, "currentParent"    # Landroid/window/WindowContainerToken;
    .param p2, "newParent"    # Landroid/window/WindowContainerToken;
    .param p3, "windowingModes"    # [I
    .param p4, "activityTypes"    # [I
    .param p5, "onTop"    # Z
    .param p6, "reparentTopOnly"    # Z

    .line 512
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 513
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, v2

    goto :goto_c

    :cond_b
    move-object v3, v1

    .line 514
    :goto_c
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_12
    move-object v4, v1

    .line 512
    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForChildrenTasksReparent(Landroid/os/IBinder;Landroid/os/IBinder;[I[IZZ)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    return-object p0
.end method

.method public requestFocusOnTaskFragment(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 852
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 854
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 855
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public requestForceTaskInfoChange(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 1212
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 1213
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTaskInfoChangeRequested(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 1214
    return-object p0
.end method

.method public restoreTransientOrder(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 784
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 786
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 788
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    return-object p0
.end method

.method public scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 246
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 247
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmPinnedBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 248
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 250
    return-object p0
.end method

.method public sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "sender"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 648
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 649
    invoke-virtual {v1, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 650
    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 651
    invoke-virtual {v1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    .line 648
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    return-object p0
.end method

.method public setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingMode"    # I

    .line 345
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 346
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmActivityWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 347
    return-object p0
.end method

.method public setAdjacentRoots(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "root1"    # Landroid/window/WindowContainerToken;
    .param p2, "root2"    # Landroid/window/WindowContainerToken;

    .line 569
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 570
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 571
    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 569
    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForAdjacentRoots(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public setAdjacentTaskFragments(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "fragmentToken1"    # Landroid/os/IBinder;
    .param p2, "fragmentToken2"    # Landroid/os/IBinder;
    .param p3, "params"    # Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    .line 751
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 753
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 754
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 755
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 756
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "windowContainer"    # Landroid/window/WindowContainerToken;
    .param p2, "alwaysOnTop"    # Z

    .line 947
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 950
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 951
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 953
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    return-object p0
.end method

.method public setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "appBounds"    # Landroid/graphics/Rect;

    .line 203
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 204
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 205
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 206
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 207
    return-object p0
.end method

.method public setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 188
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 189
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 190
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 191
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 192
    return-object p0
.end method

.method public setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "task"    # Landroid/window/WindowContainerToken;
    .param p2, "surfaceBounds"    # Landroid/graphics/Rect;

    .line 325
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 326
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_16

    .line 327
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 329
    :cond_16
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmBoundsChangeSurfaceBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 330
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 331
    return-object p0
.end method

.method public setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 298
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 299
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmBoundsChangeTransaction(Landroid/window/WindowContainerTransaction$Change;Landroid/view/SurfaceControl$Transaction;)V

    .line 300
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 301
    return-object p0
.end method

.method public setChangeFreeformStashMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "changeFreeformStashMode"    # I

    .line 1191
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 1192
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeFreeformStashMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 1193
    return-object p0
.end method

.method public setChangeFreeformStashScale(Landroid/window/WindowContainerToken;F)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "changeFreeformStashScale"    # F

    .line 1202
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 1203
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeFreeformStashScale(Landroid/window/WindowContainerTransaction$Change;F)V

    .line 1204
    return-object p0
.end method

.method public setChangeStagePosition(Z)V
    .registers 2
    .param p1, "change"    # Z

    .line 1119
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    .line 1120
    return-void
.end method

.method public setChangeTransitMode(Landroid/window/WindowContainerToken;ILjava/lang/String;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "changeTransitMode"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1163
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 1164
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 1165
    invoke-static {v0, p3}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitReason(Landroid/window/WindowContainerTransaction$Change;Ljava/lang/String;)V

    .line 1166
    return-object p0
.end method

.method public setChangeTransitStartBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "startBounds"    # Landroid/graphics/Rect;

    .line 1175
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 1176
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_16

    .line 1177
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 1179
    :cond_16
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeTransitStartBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1180
    return-object p0
.end method

.method public setChangeTransitionRequest(I)V
    .registers 2
    .param p1, "changeTransitionRequest"    # I

    .line 1144
    iput p1, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    .line 1145
    return-void
.end method

.method public setCompanionTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "companionFragmentToken"    # Landroid/os/IBinder;

    .line 893
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 895
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setSecondaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 897
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "densityDpi"    # I

    .line 233
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 234
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 235
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x1000

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 236
    return-object p0
.end method

.method public setDismissSplit(Z)V
    .registers 2
    .param p1, "dismiss"    # Z

    .line 1129
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    .line 1130
    return-void
.end method

.method public setDisplayIdForChangeTransition(ILjava/lang/String;)V
    .registers 3
    .param p1, "displayId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1226
    iput p1, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    .line 1227
    iput-object p2, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    .line 1228
    return-void
.end method

.method public setDoNotPip(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 440
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 441
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 442
    return-object p0
.end method

.method public setDragResizing(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "dragResizing"    # Z

    .line 632
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 633
    .local v0, "change":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 634
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmDragResizing(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 635
    return-object p0
.end method

.method public setEmbedActivityMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "embedActivityMode"    # I

    .line 276
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 277
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    .line 278
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 279
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 280
    return-object p0
.end method

.method public setErrorCallbackToken(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "errorCallbackToken"    # Landroid/os/IBinder;

    .line 966
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 969
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    .line 970
    return-object p0

    .line 967
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set multiple error token for one transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFocusable(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "focusable"    # Z

    .line 369
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 370
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmFocusable(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 371
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 372
    return-object p0
.end method

.method public setForceTranslucent(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "forceTranslucent"    # Z

    .line 425
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 426
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmForceTranslucent(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 427
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 428
    return-object p0
.end method

.method public setHidden(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "hidden"    # Z

    .line 383
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 384
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmHidden(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 385
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 386
    return-object p0
.end method

.method public setIgnoreOrientationRequest(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "ignoreOrientationRequest"    # Z

    .line 411
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 412
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmIgnoreOrientationRequest(Landroid/window/WindowContainerTransaction$Change;Z)V

    .line 413
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 414
    return-object p0
.end method

.method public setLaunchAdjacentFlagRoot(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;

    .line 582
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchAdjacentFlagRoot(Landroid/os/IBinder;Z)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method

.method public setLaunchRoot(Landroid/window/WindowContainerToken;[I[I)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingModes"    # [I
    .param p3, "activityTypes"    # [I

    .line 552
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    .line 553
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 552
    invoke-static {v1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForSetLaunchRoot(Landroid/os/IBinder;[I[I)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    return-object p0
.end method

.method public setRelativeBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "relBounds"    # Landroid/graphics/Rect;

    .line 452
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 453
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_16

    .line 454
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;Landroid/graphics/Rect;)V

    .line 456
    :cond_16
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmRelativeBounds(Landroid/window/WindowContainerTransaction$Change;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 457
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmChangeMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmChangeMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 459
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 460
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 461
    return-object p0
.end method

.method public setReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "windowContainer"    # Landroid/window/WindowContainerToken;
    .param p2, "reparentLeafTaskIfRelaunch"    # Z

    .line 1010
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;-><init>(I)V

    .line 1013
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1014
    invoke-virtual {v0, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->build()Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v0

    .line 1016
    .local v0, "hierarchyOp":Landroid/window/WindowContainerTransaction$HierarchyOp;
    iget-object v1, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    return-object p0
.end method

.method public setScreenSizeDp(Landroid/window/WindowContainerToken;II)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 219
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 220
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 221
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 222
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 223
    return-object p0
.end method

.method public setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "widthDp"    # I

    .line 395
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 396
    .local v0, "cfg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iput p2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 397
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    or-int/lit16 v1, v1, 0x800

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 398
    return-object p0
.end method

.method public setStagePosition(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "stagePosition"    # I

    .line 260
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 261
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfiguration(Landroid/window/WindowContainerTransaction$Change;)Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, p2}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    .line 262
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x20000000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmConfigSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 263
    invoke-static {v0}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fgetmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;)I

    move-result v1

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowSetMask(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 265
    return-object p0
.end method

.method public setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;
    .registers 2
    .param p1, "organizer"    # Landroid/window/ITaskFragmentOrganizer;

    .line 984
    iput-object p1, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 985
    return-object p0
.end method

.method public setTransactionType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 1089
    iput p1, p0, Landroid/window/WindowContainerTransaction;->mType:I

    .line 1090
    return-void
.end method

.method public setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;
    .registers 4
    .param p1, "container"    # Landroid/window/WindowContainerToken;
    .param p2, "windowingMode"    # I

    .line 356
    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/WindowContainerTransaction;->getOrCreateChange(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$Change;

    move-result-object v0

    .line 357
    .local v0, "chg":Landroid/window/WindowContainerTransaction$Change;
    invoke-static {v0, p2}, Landroid/window/WindowContainerTransaction$Change;->-$$Nest$fputmWindowingMode(Landroid/window/WindowContainerTransaction$Change;I)V

    .line 358
    return-object p0
.end method

.method public startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 7
    .param p1, "fragmentToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;
    .param p3, "activityIntent"    # Landroid/content/Intent;
    .param p4, "activityOptions"    # Landroid/os/Bundle;

    .line 711
    new-instance v0, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    .line 713
    invoke-virtual {v0, p2}, Landroid/window/TaskFragmentOperation$Builder;->setActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 714
    invoke-virtual {v0, p3}, Landroid/window/TaskFragmentOperation$Builder;->setActivityIntent(Landroid/content/Intent;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 715
    invoke-virtual {v0, p4}, Landroid/window/TaskFragmentOperation$Builder;->setBundle(Landroid/os/Bundle;)Landroid/window/TaskFragmentOperation$Builder;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v0

    .line 717
    .local v0, "operation":Landroid/window/TaskFragmentOperation;
    invoke-virtual {p0, p1, v0}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    return-object v1
.end method

.method public startShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 666
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForStartShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    return-object p0
.end method

.method public startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 606
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->createForTaskLaunch(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1248
    const-string v0, ""

    .line 1249
    .local v0, "extraStr":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction;->changeTransitionRequested()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changeTransitRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    invoke-static {v2}, Landroid/window/WindowContainerTransaction;->changeTransitRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WindowContainerTransaction { changes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hops = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorCallbackToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " taskFragmentOrganizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1265
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1266
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mHierarchyOps:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1267
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mErrorCallbackToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1268
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1272
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mPositionChange:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1279
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction;->mDismissSplit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1281
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_2c

    .line 1282
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mChangeTransitionRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    :cond_2c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_3a

    .line 1285
    iget v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayIdForChangeTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1286
    iget-object v0, p0, Landroid/window/WindowContainerTransaction;->mDisplayChangeTransitionReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1289
    :cond_3a
    return-void
.end method
