.class Landroid/widget/TabWidget$SemTabTouchListener;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemTabTouchListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Landroid/widget/TabWidget;


# direct methods
.method private constructor <init>(Landroid/widget/TabWidget;I)V
    .registers 3
    .param p2, "tabIndex"    # I

    .line 719
    iput-object p1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    iput p2, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    .line 721
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$SemTabTouchListener-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget$SemTabTouchListener;-><init>(Landroid/widget/TabWidget;I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 725
    iget-object v0, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v0}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I

    move-result v0

    iget v1, p0, Landroid/widget/TabWidget$SemTabTouchListener;->mTabIndex:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    .line 726
    return v2

    .line 729
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 731
    .local v0, "action":I
    const v1, 0x1020588

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemTabDotLineView;

    .line 732
    .local v3, "semTabDotLineView":Lcom/samsung/android/widget/SemTabDotLineView;
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 733
    .local v5, "tabText":Landroid/widget/TextView;
    if-eqz v3, :cond_b9

    if-nez v5, :cond_28

    goto/16 :goto_b9

    .line 737
    :cond_28
    iget-object v6, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v6}, Landroid/widget/TabWidget;->-$$Nest$fgetmSelectedTab(Landroid/widget/TabWidget;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    .line 738
    .local v6, "oldView":Landroid/view/View;
    const/4 v7, 0x0

    .line 739
    .local v7, "oldTextView":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 740
    .local v8, "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    if-nez v6, :cond_37

    .line 741
    return v2

    .line 743
    :cond_37
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemTabDotLineView;

    .line 744
    .end local v8    # "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    .local v1, "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 745
    .end local v7    # "oldTextView":Landroid/widget/TextView;
    .local v4, "oldTextView":Landroid/widget/TextView;
    if-eqz v1, :cond_b8

    if-nez v4, :cond_48

    goto :goto_b8

    .line 750
    :cond_48
    packed-switch v0, :pswitch_data_ba

    goto :goto_b7

    .line 762
    :pswitch_4c
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_b7

    .line 763
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/samsung/android/widget/SemTabDotLineView;->setSelected(Z)V

    .line 764
    iput-boolean v7, v1, Lcom/samsung/android/widget/SemTabDotLineView;->mDrawDot:Z

    .line 765
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 766
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemSemiBoldFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 768
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->-$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 769
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemRegularFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 770
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_b7

    .line 752
    :pswitch_84
    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTabDotLineView;->setDrawState(Z)V

    .line 753
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->-$$Nest$mgetNotSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 754
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemRegularFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 756
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmTabTextColorStateList(Landroid/widget/TabWidget;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/widget/TabWidget;->-$$Nest$mgetSelectedColor(Landroid/widget/TabWidget;Landroid/content/res/ColorStateList;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    iget-object v7, p0, Landroid/widget/TabWidget$SemTabTouchListener;->this$0:Landroid/widget/TabWidget;

    invoke-static {v7}, Landroid/widget/TabWidget;->-$$Nest$fgetmSemSemiBoldFont(Landroid/widget/TabWidget;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 758
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 759
    nop

    .line 774
    :cond_b7
    :goto_b7
    return v2

    .line 746
    :cond_b8
    :goto_b8
    return v2

    .line 734
    .end local v1    # "oldDotView":Lcom/samsung/android/widget/SemTabDotLineView;
    .end local v4    # "oldTextView":Landroid/widget/TextView;
    .end local v6    # "oldView":Landroid/view/View;
    :cond_b9
    :goto_b9
    return v2

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_84
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method
