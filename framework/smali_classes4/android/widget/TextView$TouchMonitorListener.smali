.class Landroid/widget/TextView$TouchMonitorListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMonitorListener"
.end annotation


# static fields
.field private static final globalTimeForTouch:I = 0x3e8


# instance fields
.field private mPressTime:J

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    .line 17761
    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17762
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 17763
    iput p1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 17765
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$TouchMonitorListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 17769
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    if-nez v0, :cond_5

    .line 17770
    return-void

    .line 17773
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 17774
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 17775
    .local v1, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 17777
    .local v2, "rawY":F
    packed-switch v0, :pswitch_data_92

    :pswitch_14
    goto/16 :goto_90

    .line 17805
    :pswitch_16
    goto/16 :goto_90

    .line 17779
    :pswitch_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    sub-long/2addr v3, v5

    .line 17780
    .local v3, "elipseTime":J
    iget v5, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 17781
    .local v5, "moveX":F
    iget v6, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 17782
    .local v6, "moveY":F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->-$$Nest$fgetTOUCH_DELTA(Landroid/widget/TextView;)F

    move-result v9

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_47

    const/4 v7, 0x1

    goto :goto_48

    :cond_47
    const/4 v7, 0x0

    .line 17784
    .local v7, "flag":Z
    :goto_48
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v8

    if-nez v8, :cond_77

    const-wide/16 v8, 0x3e8

    cmp-long v8, v3, v8

    if-gez v8, :cond_77

    if-eqz v7, :cond_77

    .line 17785
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-$$Nest$mgetPenSelectionController(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    float-to-int v11, v1

    float-to-int v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 17787
    return-void

    .line 17789
    :cond_71
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    goto :goto_90

    .line 17792
    :cond_77
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isValidMultiSelection()Z

    move-result v8

    if-nez v8, :cond_90

    .line 17793
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_90

    .line 17799
    .end local v3    # "elipseTime":J
    .end local v5    # "moveX":F
    .end local v6    # "moveY":F
    .end local v7    # "flag":Z
    :pswitch_85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    .line 17800
    iput v1, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 17801
    iput v2, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 17802
    nop

    .line 17810
    :cond_90
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_85
        :pswitch_18
        :pswitch_14
        :pswitch_16
    .end packed-switch
.end method
