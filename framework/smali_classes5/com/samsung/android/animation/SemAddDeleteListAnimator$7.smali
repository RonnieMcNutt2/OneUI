.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic val$adapter:Landroid/widget/ListAdapter;

.field final synthetic val$childCountBefore:I

.field final synthetic val$deletedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$deletedItems:Ljava/util/ArrayList;

.field final synthetic val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic val$insertedItems:Ljava/util/ArrayList;

.field final synthetic val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;ILjava/util/HashMap;Ljava/util/HashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 9
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 917
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    iput p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 35

    .line 919
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    .line 920
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 921
    .local v2, "firstVisiblePos":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 922
    .local v3, "lastVisiblePos":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 923
    .local v4, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    .line 924
    .local v5, "footerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 925
    .local v6, "childCount":I
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 926
    .local v7, "adapterCount":I
    const/4 v8, 0x0

    .line 927
    .local v8, "translationY":F
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 930
    .local v9, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v10, 0x0

    .line 931
    .local v10, "singleItemHeight":I
    const/4 v11, 0x0

    .line 932
    .local v11, "left":I
    const/4 v12, 0x0

    .line 933
    .local v12, "width":I
    const/4 v13, 0x0

    if-le v6, v4, :cond_4b

    .line 934
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v14}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v14

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v15

    add-int v10, v14, v15

    .line 935
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 936
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v12

    goto :goto_4f

    .line 938
    :cond_4b
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v12

    .line 941
    :goto_4f
    const/4 v14, 0x1

    .line 942
    .local v14, "newItemsComingFromTop":Z
    move v15, v2

    .line 943
    .local v15, "newItemsComingFromTopCount":I
    move/from16 v16, v15

    .line 944
    .local v16, "newItemsFromTopRemaining":I
    add-int/lit8 v17, v3, 0x1

    iget v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$childCountBefore:I

    sub-int/2addr v13, v6

    add-int v17, v17, v13

    .line 947
    .local v17, "newlyAppearingViewOldPositionFromBottom":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5b
    if-ge v13, v6, :cond_1f7

    .line 948
    move/from16 v18, v3

    .end local v3    # "lastVisiblePos":I
    .local v18, "lastVisiblePos":I
    add-int v3, v13, v2

    .line 949
    .local v3, "position":I
    move/from16 v19, v8

    .end local v8    # "translationY":F
    .local v19, "translationY":F
    iget-object v8, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v20

    .line 950
    .local v20, "itemId":J
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 951
    .local v8, "child":Landroid/view/View;
    const/16 v22, 0x0

    .line 952
    .local v22, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    move/from16 v23, v15

    .end local v15    # "newItemsComingFromTopCount":I
    .local v23, "newItemsComingFromTopCount":I
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    .line 954
    .local v15, "newY":F
    const-wide/16 v24, -0x1

    cmp-long v24, v20, v24

    move-object/from16 v25, v1

    .end local v1    # "listview":Landroid/widget/ListView;
    .local v25, "listview":Landroid/widget/ListView;
    if-nez v24, :cond_10f

    .line 955
    if-ge v3, v4, :cond_8d

    .line 956
    add-int/lit8 v1, v3, 0x1

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "left":I
    .end local v12    # "width":I
    .local v26, "left":I
    .local v27, "width":I
    int-to-long v11, v1

    move v1, v4

    move/from16 v28, v5

    move-wide/from16 v20, v11

    .end local v20    # "itemId":J
    .local v11, "itemId":J
    goto :goto_a5

    .line 957
    .end local v26    # "left":I
    .end local v27    # "width":I
    .local v11, "left":I
    .restart local v12    # "width":I
    .restart local v20    # "itemId":J
    :cond_8d
    move/from16 v26, v11

    move/from16 v27, v12

    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v26    # "left":I
    .restart local v27    # "width":I
    sub-int v1, v7, v5

    if-lt v3, v1, :cond_a2

    .line 958
    add-int v1, v3, v5

    sub-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x1

    int-to-long v11, v1

    .line 959
    .local v11, "footerId":J
    move v1, v4

    move/from16 v28, v5

    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .local v1, "headerViewsCount":I
    .local v28, "footerViewsCount":I
    neg-long v4, v11

    move-wide/from16 v20, v4

    .end local v20    # "itemId":J
    .local v4, "itemId":J
    goto :goto_a5

    .line 957
    .end local v1    # "headerViewsCount":I
    .end local v11    # "footerId":J
    .end local v28    # "footerViewsCount":I
    .local v4, "headerViewsCount":I
    .restart local v5    # "footerViewsCount":I
    .restart local v20    # "itemId":J
    :cond_a2
    move v1, v4

    move/from16 v28, v5

    .line 961
    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .restart local v1    # "headerViewsCount":I
    .restart local v28    # "footerViewsCount":I
    :goto_a5
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 963
    .end local v22    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v4, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-nez v4, :cond_c4

    .line 965
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v11, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    move/from16 v22, v1

    move/from16 v33, v7

    goto/16 :goto_1b0

    .line 969
    :cond_c4
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 970
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v15

    if-nez v5, :cond_fa

    .line 972
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    move/from16 v22, v1

    move/from16 v33, v7

    goto/16 :goto_1b0

    .line 976
    :cond_fa
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v15

    .line 977
    .end local v19    # "translationY":F
    .local v5, "translationY":F
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 978
    .local v11, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    .end local v11    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v22, v1

    move v8, v5

    move/from16 v33, v7

    goto/16 :goto_1e3

    .line 982
    .end local v1    # "headerViewsCount":I
    .end local v26    # "left":I
    .end local v27    # "width":I
    .end local v28    # "footerViewsCount":I
    .local v4, "headerViewsCount":I
    .local v5, "footerViewsCount":I
    .local v11, "left":I
    .restart local v12    # "width":I
    .restart local v19    # "translationY":F
    .restart local v22    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_10f
    move v1, v4

    move/from16 v28, v5

    move/from16 v26, v11

    move/from16 v27, v12

    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .end local v11    # "left":I
    .end local v12    # "width":I
    .restart local v1    # "headerViewsCount":I
    .restart local v26    # "left":I
    .restart local v27    # "width":I
    .restart local v28    # "footerViewsCount":I
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 984
    .local v4, "startPos":Ljava/lang/Integer;
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 985
    .end local v22    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v5, :cond_15c

    .line 986
    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 987
    const/4 v11, 0x0

    .line 989
    .end local v14    # "newItemsComingFromTop":Z
    .local v11, "newItemsComingFromTop":Z
    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    cmpl-float v12, v12, v15

    if-nez v12, :cond_146

    .line 990
    move/from16 v22, v1

    move/from16 v33, v7

    move v14, v11

    move/from16 v8, v19

    goto/16 :goto_1e3

    .line 992
    :cond_146
    iget v12, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v12, v12

    sub-float/2addr v12, v15

    .line 993
    .end local v19    # "translationY":F
    .local v12, "translationY":F
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v22, v1

    const/4 v1, 0x0

    .end local v1    # "headerViewsCount":I
    .local v22, "headerViewsCount":I
    invoke-virtual {v14, v8, v1, v12}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 994
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v33, v7

    move v14, v11

    move v8, v12

    goto/16 :goto_1e3

    .end local v11    # "newItemsComingFromTop":Z
    .end local v12    # "translationY":F
    .end local v22    # "headerViewsCount":I
    .local v1, "headerViewsCount":I
    .restart local v14    # "newItemsComingFromTop":Z
    .restart local v19    # "translationY":F
    :cond_15c
    move/from16 v22, v1

    .end local v1    # "headerViewsCount":I
    .restart local v22    # "headerViewsCount":I
    if-eqz v4, :cond_175

    .line 997
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v15

    .line 998
    .end local v19    # "translationY":F
    .local v1, "translationY":F
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 999
    .local v11, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    .end local v11    # "anim":Landroid/animation/ObjectAnimator;
    move v8, v1

    move/from16 v33, v7

    goto/16 :goto_1e3

    .line 1003
    .end local v1    # "translationY":F
    .restart local v19    # "translationY":F
    :cond_175
    add-int v1, v13, v2

    .line 1005
    .local v1, "currentPos":I
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b3

    .line 1006
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v29, v4

    .end local v4    # "startPos":Ljava/lang/Integer;
    .local v29, "startPos":Ljava/lang/Integer;
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v1, v12, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    .line 1007
    .local v4, "shiftCount":I
    sub-int v11, v1, v4

    .line 1009
    .local v11, "oldPos":I
    sub-int v12, v1, v11

    .line 1010
    .local v12, "rowShiftInsert":I
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v30

    mul-int v31, v12, v10

    move/from16 v32, v4

    .end local v4    # "shiftCount":I
    .local v32, "shiftCount":I
    sub-int v4, v30, v31

    .line 1011
    .local v4, "oldYInsert":I
    move-object/from16 v30, v5

    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v30, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    int-to-float v5, v4

    sub-float/2addr v5, v15

    .line 1012
    .local v5, "translationYInsert":F
    move/from16 v31, v4

    .end local v4    # "oldYInsert":I
    .local v31, "oldYInsert":I
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    move/from16 v33, v7

    const/4 v7, 0x0

    .end local v7    # "adapterCount":I
    .local v33, "adapterCount":I
    invoke-virtual {v4, v8, v7, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1013
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "translationYInsert":F
    .end local v11    # "oldPos":I
    .end local v12    # "rowShiftInsert":I
    .end local v31    # "oldYInsert":I
    .end local v32    # "shiftCount":I
    nop

    .line 947
    .end local v1    # "currentPos":I
    .end local v3    # "position":I
    .end local v8    # "child":Landroid/view/View;
    .end local v15    # "newY":F
    .end local v20    # "itemId":J
    .end local v29    # "startPos":Ljava/lang/Integer;
    .end local v30    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :goto_1b0
    move/from16 v8, v19

    goto :goto_1e3

    .line 1016
    .end local v33    # "adapterCount":I
    .restart local v1    # "currentPos":I
    .restart local v3    # "position":I
    .local v4, "startPos":Ljava/lang/Integer;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .restart local v7    # "adapterCount":I
    .restart local v8    # "child":Landroid/view/View;
    .restart local v15    # "newY":F
    .restart local v20    # "itemId":J
    :cond_1b3
    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v33, v7

    .end local v4    # "startPos":Ljava/lang/Integer;
    .end local v5    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v7    # "adapterCount":I
    .restart local v29    # "startPos":Ljava/lang/Integer;
    .restart local v30    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .restart local v33    # "adapterCount":I
    if-lez v16, :cond_1cb

    if-eqz v14, :cond_1cb

    .line 1017
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v5, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    neg-int v4, v4

    .line 1018
    .local v4, "rowShift":I
    add-int/lit8 v16, v16, -0x1

    goto :goto_1cf

    .line 1020
    .end local v4    # "rowShift":I
    :cond_1cb
    sub-int v4, v17, v3

    .line 1021
    .restart local v4    # "rowShift":I
    add-int/lit8 v17, v17, 0x1

    .line 1024
    :goto_1cf
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    mul-int v7, v4, v10

    add-int/2addr v5, v7

    .line 1025
    .local v5, "oldY":I
    int-to-float v7, v5

    sub-float/2addr v7, v15

    .line 1026
    .end local v19    # "translationY":F
    .local v7, "translationY":F
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1027
    .local v11, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    .line 947
    .end local v1    # "currentPos":I
    .end local v3    # "position":I
    .end local v4    # "rowShift":I
    .end local v5    # "oldY":I
    .end local v7    # "translationY":F
    .end local v11    # "anim":Landroid/animation/ObjectAnimator;
    .end local v15    # "newY":F
    .end local v20    # "itemId":J
    .end local v29    # "startPos":Ljava/lang/Integer;
    .end local v30    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v8, "translationY":F
    :goto_1e3
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v18

    move/from16 v4, v22

    move/from16 v15, v23

    move-object/from16 v1, v25

    move/from16 v11, v26

    move/from16 v12, v27

    move/from16 v5, v28

    move/from16 v7, v33

    goto/16 :goto_5b

    .end local v18    # "lastVisiblePos":I
    .end local v22    # "headerViewsCount":I
    .end local v23    # "newItemsComingFromTopCount":I
    .end local v25    # "listview":Landroid/widget/ListView;
    .end local v26    # "left":I
    .end local v27    # "width":I
    .end local v28    # "footerViewsCount":I
    .end local v33    # "adapterCount":I
    .local v1, "listview":Landroid/widget/ListView;
    .local v3, "lastVisiblePos":I
    .local v4, "headerViewsCount":I
    .local v5, "footerViewsCount":I
    .local v7, "adapterCount":I
    .local v11, "left":I
    .local v12, "width":I
    .local v15, "newItemsComingFromTopCount":I
    :cond_1f7
    move-object/from16 v25, v1

    move/from16 v18, v3

    move/from16 v22, v4

    move/from16 v28, v5

    move/from16 v33, v7

    move/from16 v19, v8

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v23, v15

    .line 1033
    .end local v1    # "listview":Landroid/widget/ListView;
    .end local v3    # "lastVisiblePos":I
    .end local v4    # "headerViewsCount":I
    .end local v5    # "footerViewsCount":I
    .end local v7    # "adapterCount":I
    .end local v8    # "translationY":F
    .end local v11    # "left":I
    .end local v12    # "width":I
    .end local v13    # "i":I
    .end local v15    # "newItemsComingFromTopCount":I
    .restart local v18    # "lastVisiblePos":I
    .restart local v19    # "translationY":F
    .restart local v22    # "headerViewsCount":I
    .restart local v23    # "newItemsComingFromTopCount":I
    .restart local v25    # "listview":Landroid/widget/ListView;
    .restart local v26    # "left":I
    .restart local v27    # "width":I
    .restart local v28    # "footerViewsCount":I
    .restart local v33    # "adapterCount":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1037
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1040
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    const/4 v3, 0x0

    .line 1042
    .end local v19    # "translationY":F
    .local v3, "updateListenerAdded":Z
    .restart local v8    # "translationY":F
    :goto_21b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "bounds"

    if-eqz v4, :cond_366

    .line 1043
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1044
    .local v4, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 1046
    .local v7, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v11, v11, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v13, v26, v27

    iget v15, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    move-object/from16 v19, v1

    move/from16 v1, v26

    .end local v26    # "left":I
    .local v1, "left":I
    .local v19, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-direct {v11, v1, v12, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1048
    .local v11, "startValue":Landroid/graphics/Rect;
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v13, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v15, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    move-object/from16 v20, v4

    .end local v4    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v20, "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v13, v15, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    .line 1053
    .local v4, "newPosition":I
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$deletedItemPosHash:Ljava/util/HashSet;

    iget v13, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    .line 1056
    .local v12, "isDeletedItem":Z
    sub-int v13, v4, v2

    .line 1060
    .local v13, "destinationViewIndex":I
    if-gez v13, :cond_28b

    .line 1062
    if-nez v6, :cond_270

    .line 1063
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v15

    int-to-float v15, v15

    move/from16 v21, v2

    move v2, v15

    move-object/from16 v15, v25

    .local v15, "firstChildTop":F
    goto :goto_27e

    .line 1065
    .end local v15    # "firstChildTop":F
    :cond_270
    move/from16 v21, v2

    move-object/from16 v15, v25

    const/4 v2, 0x0

    .end local v2    # "firstVisiblePos":I
    .end local v25    # "listview":Landroid/widget/ListView;
    .local v15, "listview":Landroid/widget/ListView;
    .local v21, "firstVisiblePos":I
    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 1067
    .local v2, "firstChildTop":F
    :goto_27e
    move/from16 v24, v4

    .end local v4    # "newPosition":I
    .local v24, "newPosition":I
    iget v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 1068
    .end local v8    # "translationY":F
    .local v4, "translationY":F
    neg-int v8, v13

    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float/2addr v4, v8

    .line 1069
    .end local v2    # "firstChildTop":F
    move v8, v4

    goto :goto_2c8

    .end local v15    # "listview":Landroid/widget/ListView;
    .end local v21    # "firstVisiblePos":I
    .end local v24    # "newPosition":I
    .local v2, "firstVisiblePos":I
    .local v4, "newPosition":I
    .restart local v8    # "translationY":F
    .restart local v25    # "listview":Landroid/widget/ListView;
    :cond_28b
    move/from16 v21, v2

    move/from16 v24, v4

    move-object/from16 v15, v25

    .end local v2    # "firstVisiblePos":I
    .end local v4    # "newPosition":I
    .end local v25    # "listview":Landroid/widget/ListView;
    .restart local v15    # "listview":Landroid/widget/ListView;
    .restart local v21    # "firstVisiblePos":I
    .restart local v24    # "newPosition":I
    if-lt v13, v6, :cond_2b9

    .line 1070
    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2a2

    .line 1071
    iget v2, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    const/4 v4, 0x0

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    .end local v8    # "translationY":F
    .local v2, "translationY":F
    goto :goto_2b0

    .line 1073
    .end local v2    # "translationY":F
    .restart local v8    # "translationY":F
    :cond_2a2
    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    .line 1075
    .end local v8    # "translationY":F
    .restart local v2    # "translationY":F
    :goto_2b0
    sub-int v4, v13, v6

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v10

    int-to-float v4, v4

    add-float/2addr v2, v4

    move v8, v2

    goto :goto_2c8

    .line 1077
    .end local v2    # "translationY":F
    .restart local v8    # "translationY":F
    :cond_2b9
    invoke-virtual {v15, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    .line 1078
    .local v2, "referenceY":F
    iget v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    move v8, v4

    .line 1081
    .end local v2    # "referenceY":F
    :goto_2c8
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1082
    .local v2, "endValue":Landroid/graphics/Rect;
    float-to-int v4, v8

    move/from16 v25, v6

    const/4 v6, 0x0

    .end local v6    # "childCount":I
    .local v25, "childCount":I
    invoke-virtual {v2, v6, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1085
    if-eqz v12, :cond_334

    .line 1087
    sget v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    const/high16 v26, 0x40000000    # 2.0f

    div-float v4, v4, v26

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 1088
    .local v4, "horizOffset":I
    sget v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v6, v29, v6

    div-float v6, v6, v26

    move/from16 v26, v8

    .end local v8    # "translationY":F
    .local v26, "translationY":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 1089
    .local v6, "vertOffset":I
    new-instance v8, Landroid/graphics/Rect;

    move/from16 v29, v12

    .end local v12    # "isDeletedItem":Z
    .local v29, "isDeletedItem":Z
    iget v12, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v4

    move/from16 v30, v13

    .end local v13    # "destinationViewIndex":I
    .local v30, "destinationViewIndex":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v6

    move/from16 v31, v14

    .end local v14    # "newItemsComingFromTop":Z
    .local v31, "newItemsComingFromTop":Z
    iget v14, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v4

    move/from16 v32, v4

    .end local v4    # "horizOffset":I
    .local v32, "horizOffset":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    invoke-direct {v8, v12, v13, v14, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v8

    .line 1091
    sget-object v4, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v4, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1093
    .local v4, "pvhBounds":Landroid/animation/PropertyValuesHolder;
    const/16 v5, 0xff

    const/4 v12, 0x0

    filled-new-array {v5, v12}, [I

    move-result-object v5

    const-string v8, "alpha"

    invoke-static {v8, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1094
    .local v5, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v8, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    filled-new-array {v4, v5}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1095
    .end local v5    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "vertOffset":I
    .end local v32    # "horizOffset":I
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_349

    .line 1096
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v26    # "translationY":F
    .end local v29    # "isDeletedItem":Z
    .end local v30    # "destinationViewIndex":I
    .end local v31    # "newItemsComingFromTop":Z
    .restart local v8    # "translationY":F
    .restart local v12    # "isDeletedItem":Z
    .restart local v13    # "destinationViewIndex":I
    .restart local v14    # "newItemsComingFromTop":Z
    :cond_334
    move/from16 v26, v8

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    const/4 v12, 0x0

    .end local v8    # "translationY":F
    .end local v12    # "isDeletedItem":Z
    .end local v13    # "destinationViewIndex":I
    .end local v14    # "newItemsComingFromTop":Z
    .restart local v26    # "translationY":F
    .restart local v29    # "isDeletedItem":Z
    .restart local v30    # "destinationViewIndex":I
    .restart local v31    # "newItemsComingFromTop":Z
    iget-object v4, v7, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v4, v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1100
    .restart local v4    # "anim":Landroid/animation/ObjectAnimator;
    :goto_349
    if-nez v3, :cond_353

    .line 1101
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1102
    const/4 v3, 0x1

    .line 1104
    :cond_353
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v2    # "endValue":Landroid/graphics/Rect;
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v7    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v11    # "startValue":Landroid/graphics/Rect;
    .end local v20    # "oldViewCoordinate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v24    # "newPosition":I
    .end local v29    # "isDeletedItem":Z
    .end local v30    # "destinationViewIndex":I
    move/from16 v2, v21

    move/from16 v6, v25

    move/from16 v8, v26

    move/from16 v14, v31

    move/from16 v26, v1

    move-object/from16 v25, v15

    move-object/from16 v1, v19

    goto/16 :goto_21b

    .line 1109
    .end local v15    # "listview":Landroid/widget/ListView;
    .end local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v21    # "firstVisiblePos":I
    .end local v31    # "newItemsComingFromTop":Z
    .local v1, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v2, "firstVisiblePos":I
    .local v6, "childCount":I
    .restart local v8    # "translationY":F
    .restart local v14    # "newItemsComingFromTop":Z
    .local v25, "listview":Landroid/widget/ListView;
    .local v26, "left":I
    :cond_366
    move-object/from16 v19, v1

    move/from16 v21, v2

    move/from16 v31, v14

    move-object/from16 v15, v25

    move/from16 v1, v26

    move/from16 v25, v6

    .end local v2    # "firstVisiblePos":I
    .end local v6    # "childCount":I
    .end local v14    # "newItemsComingFromTop":Z
    .end local v26    # "left":I
    .local v1, "left":I
    .restart local v15    # "listview":Landroid/widget/ListView;
    .restart local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v21    # "firstVisiblePos":I
    .local v25, "childCount":I
    .restart local v31    # "newItemsComingFromTop":Z
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1111
    .local v2, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_37e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d8

    .line 1112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1113
    .local v4, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 1115
    .local v6, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget v7, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/2addr v11, v10

    add-int/2addr v7, v11

    .line 1117
    .local v7, "newY":I
    new-instance v11, Landroid/graphics/Rect;

    iget v12, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v13, v1, v27

    iget v14, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v11, v1, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1118
    .local v11, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v1

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v7

    invoke-direct {v12, v1, v7, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1119
    .local v12, "newViewBounds":Landroid/graphics/Rect;
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v13, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v14, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move/from16 v26, v1

    .end local v1    # "left":I
    .restart local v26    # "left":I
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v13, v5, v14, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1122
    .local v1, "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v3, :cond_3d2

    .line 1123
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1125
    :cond_3d2
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v1    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v4    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v6    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v7    # "newY":I
    .end local v11    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v12    # "newViewBounds":Landroid/graphics/Rect;
    move/from16 v1, v26

    goto :goto_37e

    .line 1128
    .end local v26    # "left":I
    .local v1, "left":I
    :cond_3d8
    move/from16 v26, v1

    .end local v1    # "left":I
    .restart local v26    # "left":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1129
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 1131
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1132
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1133
    sget-object v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1134
    new-instance v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;

    invoke-direct {v4, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1169
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1170
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1172
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postDelayed #3 mAniTimeoutRunnable delay = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v6, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v6, v6, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$7;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v6, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1174
    return-void
.end method
