.class Lcom/android/internal/policy/DecorView$10;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->setKnoxBadgePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;

    .line 4088
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .line 4091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->access$100(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "navigation_bar_gesture_while_hidden"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 4092
    .local v1, "gestureNavBarEnabled":Z
    :goto_1a
    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->access$200(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigation_bar_gesture_hint"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2f

    move v4, v2

    goto :goto_30

    :cond_2f
    move v4, v3

    .line 4093
    .local v4, "gestureHintState":Z
    :goto_30
    if-eqz v1, :cond_47

    iget-object v5, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    # getter for: Lcom/android/internal/policy/DecorView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/DecorView;->access$300(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "navigation_bar_gesture_detail_type"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_47

    move v5, v2

    goto :goto_48

    :cond_47
    move v5, v3

    .line 4094
    .local v5, "isGestureNavBarInCenter":Z
    :goto_48
    if-eqz v1, :cond_4e

    if-nez v4, :cond_4e

    move v6, v2

    goto :goto_4f

    :cond_4e
    move v6, v3

    .line 4095
    .local v6, "isGestureHintOff":Z
    :goto_4f
    iget-object v7, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "task_bar"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v2, :cond_64

    move v7, v2

    goto :goto_65

    :cond_64
    move v7, v3

    .line 4096
    .local v7, "taskbarEnabled":Z
    :goto_65
    iget-object v8, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v8}, Lcom/android/internal/policy/DecorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 4103
    .local v8, "displayType":I
    iget-object v9, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v9, v6, v7, v8}, Lcom/android/internal/policy/DecorView;->-$$Nest$mshouldHideProfileBadge(Lcom/android/internal/policy/DecorView;ZZI)Z

    move-result v9

    if-eqz v9, :cond_83

    .line 4104
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$mhideKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    .line 4105
    return-void

    .line 4108
    :cond_83
    iget-object v9, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v9}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWm(Lcom/android/internal/policy/DecorView;)Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 4109
    .local v9, "rotation":I
    iget-object v10, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v10}, Lcom/android/internal/policy/DecorView;->getWindowingMode()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_9c

    move v10, v2

    goto :goto_9d

    :cond_9c
    move v10, v3

    .line 4110
    .local v10, "isMultiWindow":Z
    :goto_9d
    if-ne v9, v2, :cond_a1

    move v11, v2

    goto :goto_a2

    :cond_a1
    move v11, v3

    .line 4111
    .local v11, "isRotation_90":Z
    :goto_a2
    const/4 v12, 0x3

    if-ne v9, v12, :cond_a7

    move v12, v2

    goto :goto_a8

    :cond_a7
    move v12, v3

    .line 4112
    .local v12, "isRotation_270":Z
    :goto_a8
    if-eqz v8, :cond_b2

    invoke-static {}, Lcom/samsung/android/util/SemViewUtils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_b1

    goto :goto_b2

    :cond_b1
    move v2, v3

    .line 4114
    .local v2, "isLargeDisplay":Z
    :cond_b2
    :goto_b2
    iget-object v13, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v13}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    .line 4115
    .local v13, "badgeW":I
    iget-object v14, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v14}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v15}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDensityRatio(Lcom/android/internal/policy/DecorView;)F

    move-result v15

    mul-float/2addr v14, v15

    float-to-int v14, v14

    .line 4117
    .local v14, "badgeH":I
    const/4 v15, 0x0

    .line 4119
    .local v15, "navigation_bar_height":I
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    .line 4121
    .local v3, "rootInsets":Landroid/view/WindowInsets;
    if-eqz v3, :cond_106

    .line 4122
    move/from16 v17, v1

    .end local v1    # "gestureNavBarEnabled":Z
    .local v17, "gestureNavBarEnabled":Z
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v18

    .line 4123
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v19

    move/from16 v20, v4

    .end local v4    # "gestureHintState":Z
    .local v20, "gestureHintState":Z
    or-int v4, v18, v19

    .line 4122
    invoke-virtual {v3, v4}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;Landroid/graphics/Insets;)V

    .line 4124
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 4125
    .local v1, "cutout":Landroid/view/DisplayCutout;
    if-eqz v1, :cond_10a

    .line 4126
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfputsKnoxBadgeRightCutout(I)V

    goto :goto_10a

    .line 4121
    .end local v17    # "gestureNavBarEnabled":Z
    .end local v20    # "gestureHintState":Z
    .local v1, "gestureNavBarEnabled":Z
    .restart local v4    # "gestureHintState":Z
    :cond_106
    move/from16 v17, v1

    move/from16 v20, v4

    .line 4131
    .end local v1    # "gestureNavBarEnabled":Z
    .end local v4    # "gestureHintState":Z
    .restart local v17    # "gestureNavBarEnabled":Z
    .restart local v20    # "gestureHintState":Z
    :cond_10a
    :goto_10a
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v1

    if-eqz v1, :cond_131

    .line 4132
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Insets;->right:I

    move-object/from16 v18, v3

    .end local v3    # "rootInsets":Landroid/view/WindowInsets;
    .local v18, "rootInsets":Landroid/view/WindowInsets;
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeInsets(Lcom/android/internal/policy/DecorView;)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v4, v3}, Lcom/android/internal/policy/DecorView;->getNavBarSizeForBadge(III)I

    move-result v15

    goto :goto_133

    .line 4131
    .end local v18    # "rootInsets":Landroid/view/WindowInsets;
    .restart local v3    # "rootInsets":Landroid/view/WindowInsets;
    :cond_131
    move-object/from16 v18, v3

    .line 4135
    .end local v3    # "rootInsets":Landroid/view/WindowInsets;
    .restart local v18    # "rootInsets":Landroid/view/WindowInsets;
    :goto_133
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$maddKnoxBadge(Lcom/android/internal/policy/DecorView;)V

    .line 4136
    if-eqz v2, :cond_170

    .line 4138
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    sub-int/2addr v3, v13

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4139
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    sub-int/2addr v3, v14

    sub-int/2addr v3, v15

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 4140
    if-eqz v12, :cond_15f

    .line 4141
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    invoke-static {}, Lcom/android/internal/policy/DecorView;->-$$Nest$sfgetsKnoxBadgeRightCutout()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4143
    :cond_15f
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23c

    .line 4146
    :cond_170
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v1

    .line 4148
    .local v1, "position":I
    if-eqz v12, :cond_1c9

    .line 4149
    if-eqz v5, :cond_199

    .line 4150
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4151
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v14

    sub-int/2addr v4, v15

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_1ad

    .line 4154
    :cond_199
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutLeft(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    add-int/2addr v4, v15

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4155
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v14

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 4157
    :goto_1ad
    if-eqz v10, :cond_1b9

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1b9

    .line 4158
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4160
    :cond_1b9
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmReverseKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23c

    .line 4161
    :cond_1c9
    if-eqz v11, :cond_218

    .line 4162
    if-eqz v5, :cond_1e3

    .line 4163
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4164
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v14

    sub-int/2addr v4, v15

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    goto :goto_1f8

    .line 4167
    :cond_1e3
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    sub-int/2addr v4, v15

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4168
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v14

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 4170
    :goto_1f8
    if-eqz v10, :cond_208

    const/16 v3, 0x8

    if-ne v1, v3, :cond_208

    .line 4171
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4173
    :cond_208
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_23c

    .line 4175
    :cond_218
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutRight(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v13

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;I)V

    .line 4176
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxLayoutBottom(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    sub-int/2addr v4, v14

    sub-int/2addr v4, v15

    invoke-static {v3, v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fputmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;I)V

    .line 4177
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadge(Lcom/android/internal/policy/DecorView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4181
    .end local v1    # "position":I
    :goto_23c
    iget-object v1, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v1

    add-int/2addr v1, v13

    .line 4182
    .local v1, "finishX":I
    iget-object v3, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v3}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v3

    add-int/2addr v3, v14

    .line 4185
    .local v3, "finishY":I
    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v4

    move/from16 v16, v2

    .end local v2    # "isLargeDisplay":Z
    .local v16, "isLargeDisplay":Z
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartX(Lcom/android/internal/policy/DecorView;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setLeft(I)V

    .line 4186
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    iget-object v4, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v4}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeStartY(Lcom/android/internal/policy/DecorView;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTop(I)V

    .line 4187
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setRight(I)V

    .line 4188
    iget-object v2, v0, Lcom/android/internal/policy/DecorView$10;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v2}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmKnoxBadgeView(Lcom/android/internal/policy/DecorView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBottom(I)V

    .line 4201
    return-void
.end method
