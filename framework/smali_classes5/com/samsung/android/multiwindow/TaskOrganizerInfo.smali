.class public Lcom/samsung/android/multiwindow/TaskOrganizerInfo;
.super Ljava/lang/Object;
.source "TaskOrganizerInfo.java"


# static fields
.field private static final KEY_CHANGE_SPLIT_LAYOUT_FOR_LAUNCH_ADJACENT:Ljava/lang/String; = "change_split_layout_for_launch_adjacent"

.field private static final KEY_EXIT_SPLIT_SCREEN_STAGE_TYPE:Ljava/lang/String; = "exit_split_screen_stage_type"

.field private static final KEY_EXIT_SPLIT_SCREEN_TOP_TASK_ID:Ljava/lang/String; = "exit_split_screen_top_task_id"

.field private static final KEY_EXIT_SPLIT_TO_FREEFORM_TASK_ID:Ljava/lang/String; = "split_to_freeform_task_id"

.field private static final KEY_SPLIT_SCREEN_CREATE_MODE:Ljava/lang/String; = "split_screen_create_mode"


# instance fields
.field private mChangeSplitLayoutForLaunchAdjacent:Z

.field private mExitSplitScreenStageType:I

.field private mExitSplitScreenTopTaskId:I

.field private mSplitScreenCreateMode:I

.field private mSplitToFreeformTaskId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 53
    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    .line 54
    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "b"    # Landroid/os/Bundle;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 53
    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    .line 54
    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    .line 62
    if-nez p1, :cond_10

    .line 63
    return-void

    .line 66
    :cond_10
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 69
    const-string/jumbo v2, "split_screen_create_mode"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 71
    const-string v2, "change_split_layout_for_launch_adjacent"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    .line 76
    const-string v2, "exit_split_screen_top_task_id"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    .line 77
    const-string/jumbo v2, "split_to_freeform_task_id"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    .line 78
    const-string v0, "exit_split_screen_stage_type"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    .line 80
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/multiwindow/TaskOrganizerInfo;
    .registers 2
    .param p0, "b"    # Landroid/os/Bundle;

    .line 84
    new-instance v0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;

    invoke-direct {v0, p0}, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getExitSplitScreenStageType()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    return v0
.end method

.method public getExitSplitScreenTopTaskId()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    return v0
.end method

.method public getSplitScreenCreateMode()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    return v0
.end method

.method public getSplitToFreeformTaskId()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    return v0
.end method

.method public isChangeSplitLayoutForLaunchAdjacent()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    return v0
.end method

.method public setExitSplitScreenStageType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 142
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    .line 143
    return-void
.end method

.method public setExitSplitScreenTopTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 126
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    .line 127
    return-void
.end method

.method public setSplitScreenCreateModeForLaunchAdjacent(I)V
    .registers 3
    .param p1, "splitScreenCreateMode"    # I

    .line 107
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    .line 109
    return-void
.end method

.method public setSplitToFreeformTaskId(I)V
    .registers 2
    .param p1, "taskId"    # I

    .line 134
    iput p1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    .line 135
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 4

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "split_screen_create_mode"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v1, "change_split_layout_for_launch_adjacent"

    iget-boolean v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    const-string v1, "exit_split_screen_top_task_id"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v1, "split_to_freeform_task_id"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string v1, "exit_split_screen_stage_type"

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskOrganizerInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d

    .line 152
    const-string v1, " mSplitScreenCreateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitScreenCreateMode:I

    invoke-static {v1}, Landroid/app/ActivityTaskManager;->splitCreateModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_1d
    iget-boolean v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mChangeSplitLayoutForLaunchAdjacent:Z

    if-eqz v1, :cond_26

    .line 156
    const-string v1, " mChangeSplitLayoutForLaunchAdjacent=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_26
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    if-eq v1, v2, :cond_35

    .line 161
    const-string v1, " mExitSplitScreenTopTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenTopTaskId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    :cond_35
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    if-eq v1, v2, :cond_44

    .line 164
    const-string v1, " mSplitToFreeformTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mSplitToFreeformTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    :cond_44
    iget v1, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    if-eqz v1, :cond_53

    .line 167
    const-string v1, " mExitSplitScreenStageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/multiwindow/TaskOrganizerInfo;->mExitSplitScreenStageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    :cond_53
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
