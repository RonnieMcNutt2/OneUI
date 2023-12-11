.class final Landroid/view/autofill/AutofillManager$CompatibilityBridge;
.super Ljava/lang/Object;
.source "AutofillManager.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatibilityBridge"
.end annotation


# instance fields
.field mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private final mFocusedBounds:Landroid/graphics/Rect;

.field private mFocusedNodeId:J

.field private mFocusedWindowId:I

.field private final mTempBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/view/autofill/AutofillManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFocusedBounds(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusedNodeId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusedWindowId(Landroid/view/autofill/AutofillManager$CompatibilityBridge;)I
    .registers 1

    iget p0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    return p0
.end method

.method constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .registers 4

    .line 3607
    iput-object p1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3592
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    .line 3594
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mTempBounds:Landroid/graphics/Rect;

    .line 3597
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 3599
    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3608
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    .line 3609
    .local p1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V

    .line 3610
    return-void
.end method

.method private findViewByAccessibilityId(IJ)Landroid/view/View;
    .registers 7
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3809
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    .line 3810
    .local v0, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-nez v0, :cond_a

    .line 3811
    const/4 v1, 0x0

    return-object v1

    .line 3813
    :cond_a
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    .line 3814
    .local v1, "viewId":I
    invoke-interface {v0, v1, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAccessibilityIdTraversal(II)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I

    .line 3818
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 3819
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_8

    .line 3820
    const/4 v1, 0x0

    return-object v1

    .line 3822
    :cond_8
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method private getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .registers 8

    .line 3613
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3614
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v1, :cond_d

    .line 3615
    monitor-exit v0

    return-object v1

    .line 3617
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3618
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "android"

    const-string v4, "com.android.server.autofill.AutofillCompatAccessibilityService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3620
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const v3, 0x100080

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_60

    .line 3623
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_2f
    new-instance v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v4}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmContext(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mCompatServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f .. :try_end_3c} :catch_3f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3c} :catch_3f
    .catchall {:try_start_2f .. :try_end_3c} :catchall_60

    .line 3627
    nop

    .line 3628
    :try_start_3d
    monitor-exit v0

    return-object v3

    .line 3624
    :catch_3f
    move-exception v3

    .line 3625
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find compat autofill service:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot find compat autofill service"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/view/autofill/AutofillManager$CompatibilityBridge;
    throw v4

    .line 3629
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/view/autofill/AutofillManager$CompatibilityBridge;
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3d .. :try_end_62} :catchall_60

    throw v1
.end method

.method private isVirtualNode(I)Z
    .registers 3
    .param p1, "nodeId"    # I

    .line 3826
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private notifyValueChanged(IJ)V
    .registers 9
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3769
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3770
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3771
    return-void

    .line 3773
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3774
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_12

    .line 3775
    return-void

    .line 3777
    :cond_12
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3778
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_19

    .line 3779
    return-void

    .line 3781
    :cond_19
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    .line 3782
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 3781
    invoke-virtual {v3, v1, v0, v4}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    .line 3783
    return-void
.end method

.method private notifyViewClicked(IJ)V
    .registers 8
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3786
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3787
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3788
    return-void

    .line 3790
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3791
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_12

    .line 3792
    return-void

    .line 3794
    :cond_12
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 3795
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v2, :cond_19

    .line 3796
    return-void

    .line 3798
    :cond_19
    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v3, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/View;I)V

    .line 3799
    return-void
.end method

.method private notifyViewEntered(IJLandroid/graphics/Rect;)Z
    .registers 11
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J
    .param p4, "focusedBounds"    # Landroid/graphics/Rect;

    .line 3731
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3732
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3733
    return v2

    .line 3735
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3736
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_13

    .line 3737
    return v2

    .line 3739
    :cond_13
    invoke-direct {p0, v1, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findVirtualNodeByAccessibilityId(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 3740
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v3, :cond_1a

    .line 3741
    return v2

    .line 3743
    :cond_1a
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v4

    if-nez v4, :cond_21

    .line 3744
    return v2

    .line 3746
    :cond_21
    iget-object v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mTempBounds:Landroid/graphics/Rect;

    .line 3747
    .local v4, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3748
    invoke-virtual {v4, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 3749
    return v2

    .line 3751
    :cond_2d
    invoke-virtual {p4, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3752
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v2, v1, v0, v4}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    .line 3753
    const/4 v2, 0x1

    return v2
.end method

.method private notifyViewExited(IJ)V
    .registers 7
    .param p1, "windowId"    # I
    .param p2, "nodeId"    # J

    .line 3757
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    .line 3758
    .local v0, "virtualId":I
    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->isVirtualNode(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 3759
    return-void

    .line 3761
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->findViewByAccessibilityId(IJ)Landroid/view/View;

    move-result-object v1

    .line 3762
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_12

    .line 3763
    return-void

    .line 3765
    :cond_12
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v2, v1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    .line 3766
    return-void
.end method

.method private updateTrackedViewsLocked()V
    .registers 2

    .line 3803
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3804
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmTrackedViews(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    .line 3806
    :cond_11
    return-void
.end method


# virtual methods
.method public getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;
    .registers 4
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3658
    .local p2, "enabledService":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez p2, :cond_8

    .line 3659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 3661
    :cond_8
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3662
    return-object p2
.end method

.method public getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 3648
    .local p1, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez p1, :cond_8

    .line 3649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 3651
    :cond_8
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->getCompatServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3652
    return-object p1
.end method

.method public getRelevantEventTypes(I)I
    .registers 3
    .param p1, "relevantEventTypes"    # I

    .line 3639
    or-int/lit8 v0, p1, 0x8

    or-int/lit8 v0, v0, 0x10

    or-int/lit8 v0, v0, 0x1

    or-int/lit16 v0, v0, 0x800

    return v0
.end method

.method public isEnabled(Z)Z
    .registers 3
    .param p1, "accessibilityEnabled"    # Z

    .line 3634
    const/4 v0, 0x1

    return v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;
    .registers 12
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "accessibilityEnabled"    # Z
    .param p3, "relevantEventTypes"    # I

    .line 3668
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3669
    .local v0, "type":I
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_47

    .line 3671
    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAccessibilityEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): virtualId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3673
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    .line 3674
    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3671
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    :cond_47
    sparse-switch v0, :sswitch_data_10e

    goto/16 :goto_107

    .line 3715
    :sswitch_4c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$mgetClient(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    .line 3716
    .local v1, "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    if-eqz v1, :cond_107

    .line 3717
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3718
    :try_start_5b
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 3719
    iget v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    iget-object v6, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewEntered(IJLandroid/graphics/Rect;)Z

    .line 3721
    :cond_6a
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->updateTrackedViewsLocked()V

    .line 3722
    monitor-exit v2

    goto/16 :goto_107

    :catchall_70
    move-exception v3

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_70

    throw v3

    .line 3700
    .end local v1    # "client":Landroid/view/autofill/AutofillManager$AutofillClient;
    :sswitch_73
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3701
    :try_start_7a
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_97

    iget-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3702
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_97

    .line 3703
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyValueChanged(IJ)V

    .line 3705
    :cond_97
    monitor-exit v1

    .line 3706
    goto :goto_107

    .line 3705
    :catchall_99
    move-exception v2

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_99

    throw v2

    .line 3678
    :sswitch_9c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3679
    :try_start_a3
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_b7

    iget-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3680
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b7

    .line 3681
    monitor-exit v1

    return-object p1

    .line 3683
    :cond_b7
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d7

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    sget-wide v6, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_d7

    .line 3685
    iget v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    iget-wide v4, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    invoke-direct {p0, v2, v4, v5}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewExited(IJ)V

    .line 3686
    iput v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 3687
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3688
    iget-object v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3690
    :cond_d7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    .line 3691
    .local v2, "windowId":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    .line 3692
    .local v3, "nodeId":J
    iget-object v5, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewEntered(IJLandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 3693
    iput v2, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedWindowId:I

    .line 3694
    iput-wide v3, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->mFocusedNodeId:J

    .line 3696
    .end local v2    # "windowId":I
    .end local v3    # "nodeId":J
    :cond_eb
    monitor-exit v1

    .line 3697
    goto :goto_107

    .line 3696
    :catchall_ed
    move-exception v2

    monitor-exit v1
    :try_end_ef
    .catchall {:try_start_a3 .. :try_end_ef} :catchall_ed

    throw v2

    .line 3709
    :sswitch_f0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->this$0:Landroid/view/autofill/AutofillManager;

    invoke-static {v1}, Landroid/view/autofill/AutofillManager;->-$$Nest$fgetmLock(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3710
    :try_start_f7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;->notifyViewClicked(IJ)V

    .line 3711
    monitor-exit v1

    .line 3712
    goto :goto_107

    .line 3711
    :catchall_104
    move-exception v2

    monitor-exit v1
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_104

    throw v2

    .line 3727
    :cond_107
    :goto_107
    if-eqz p2, :cond_10b

    move-object v1, p1

    goto :goto_10c

    :cond_10b
    const/4 v1, 0x0

    :goto_10c
    return-object v1

    nop

    :sswitch_data_10e
    .sparse-switch
        0x1 -> :sswitch_f0
        0x8 -> :sswitch_9c
        0x10 -> :sswitch_73
        0x800 -> :sswitch_4c
    .end sparse-switch
.end method
