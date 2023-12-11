.class Landroid/view/AccessibilityInteractionController$PrivateHandler;
.super Landroid/os/Handler;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateHandler"
.end annotation


# static fields
.field private static final FIRST_NO_ACCESSIBILITY_CALLBACK_MSG:I = 0x64

.field private static final MSG_APP_PREPARATION_FINISHED:I = 0x8

.field private static final MSG_APP_PREPARATION_TIMEOUT:I = 0x9

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x65

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID:I = 0x3

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x2

.field private static final MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT:I = 0x4

.field private static final MSG_FIND_FOCUS:I = 0x5

.field private static final MSG_FOCUS_SEARCH:I = 0x6

.field private static final MSG_NOTIFY_OUTSIDE_TOUCH:I = 0x66

.field private static final MSG_PERFORM_ACCESSIBILITY_ACTION:I = 0x1

.field private static final MSG_PREPARE_FOR_EXTRA_DATA_REQUEST:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1745
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1746
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1747
    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1751
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1752
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_40

    .line 1776
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1774
    :sswitch_1e
    const-string v1, "MSG_NOTIFY_OUTSIDE_TOUCH"

    return-object v1

    .line 1772
    :sswitch_21
    const-string v1, "MSG_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v1

    .line 1770
    :sswitch_24
    const-string v1, "MSG_APP_PREPARATION_TIMEOUT"

    return-object v1

    .line 1768
    :sswitch_27
    const-string v1, "MSG_APP_PREPARATION_FINISHED"

    return-object v1

    .line 1766
    :sswitch_2a
    const-string v1, "MSG_PREPARE_FOR_EXTRA_DATA_REQUEST"

    return-object v1

    .line 1764
    :sswitch_2d
    const-string v1, "MSG_FOCUS_SEARCH"

    return-object v1

    .line 1762
    :sswitch_30
    const-string v1, "MSG_FIND_FOCUS"

    return-object v1

    .line 1760
    :sswitch_33
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_TEXT"

    return-object v1

    .line 1758
    :sswitch_36
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFOS_BY_VIEW_ID"

    return-object v1

    .line 1756
    :sswitch_39
    const-string v1, "MSG_FIND_ACCESSIBILITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    return-object v1

    .line 1754
    :sswitch_3c
    const-string v1, "MSG_PERFORM_ACCESSIBILITY_ACTION"

    return-object v1

    nop

    :sswitch_data_40
    .sparse-switch
        0x1 -> :sswitch_3c
        0x2 -> :sswitch_39
        0x3 -> :sswitch_36
        0x4 -> :sswitch_33
        0x5 -> :sswitch_30
        0x6 -> :sswitch_2d
        0x7 -> :sswitch_2a
        0x8 -> :sswitch_27
        0x9 -> :sswitch_24
        0x65 -> :sswitch_21
        0x66 -> :sswitch_1e
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1782
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1783
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_62

    .line 1818
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1815
    :sswitch_1e
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mnotifyOutsideTouchUiThread(Landroid/view/AccessibilityInteractionController;)V

    .line 1816
    goto :goto_60

    .line 1812
    :sswitch_24
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mclearAccessibilityFocusUiThread(Landroid/view/AccessibilityInteractionController;)V

    .line 1813
    goto :goto_60

    .line 1809
    :sswitch_2a
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mrequestPreparerTimeoutUiThread(Landroid/view/AccessibilityInteractionController;)V

    .line 1810
    goto :goto_60

    .line 1806
    :sswitch_30
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mrequestPreparerDoneUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1807
    goto :goto_60

    .line 1803
    :sswitch_36
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mprepareForExtraDataRequestUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1804
    goto :goto_60

    .line 1800
    :sswitch_3c
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfocusSearchUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1801
    goto :goto_60

    .line 1797
    :sswitch_42
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindFocusUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1798
    goto :goto_60

    .line 1794
    :sswitch_48
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindAccessibilityNodeInfosByTextUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1795
    goto :goto_60

    .line 1791
    :sswitch_4e
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindAccessibilityNodeInfosByViewIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1792
    goto :goto_60

    .line 1785
    :sswitch_54
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mfindAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1786
    goto :goto_60

    .line 1788
    :sswitch_5a
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$PrivateHandler;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v1, p1}, Landroid/view/AccessibilityInteractionController;->-$$Nest$mperformAccessibilityActionUiThread(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V

    .line 1789
    nop

    .line 1820
    :goto_60
    return-void

    nop

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_5a
        0x2 -> :sswitch_54
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_48
        0x5 -> :sswitch_42
        0x6 -> :sswitch_3c
        0x7 -> :sswitch_36
        0x8 -> :sswitch_30
        0x9 -> :sswitch_2a
        0x65 -> :sswitch_24
        0x66 -> :sswitch_1e
    .end sparse-switch
.end method

.method hasAccessibilityCallback(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 1823
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method hasUserInteractiveMessagesWaiting()Z
    .registers 2

    .line 1827
    invoke-virtual {p0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasMessagesOrCallbacks()Z

    move-result v0

    return v0
.end method
