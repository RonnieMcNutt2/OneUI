.class Landroid/view/AccessibilityInteractionController$VirtualNode;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"

# interfaces
.implements Landroid/view/AccessibilityInteractionController$DequeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualNode"
.end annotation


# instance fields
.field mInfoId:J

.field mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method constructor <init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V
    .registers 5
    .param p2, "id"    # J
    .param p4, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 2003
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    iput-wide p2, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 2005
    iput-object p4, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 2006
    return-void
.end method


# virtual methods
.method public addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .registers 10
    .param p1, "virtualRoot"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 2018
    if-nez p1, :cond_3

    .line 2019
    return-void

    .line 2021
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 2022
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->isStack()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2023
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_24

    .line 2024
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 2025
    .local v2, "childNodeId":J
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 2023
    .end local v2    # "childNodeId":J
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .end local v1    # "i":I
    :cond_24
    goto :goto_3b

    .line 2028
    :cond_25
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_26
    if-ge v1, v0, :cond_3b

    .line 2029
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v2

    .line 2030
    .restart local v2    # "childNodeId":J
    new-instance v4, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->this$0:Landroid/view/AccessibilityInteractionController;

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    invoke-direct {v4, v5, v2, v3, v6}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    invoke-virtual {p2, v4}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->push(Ljava/lang/Object;)V

    .line 2028
    .end local v2    # "childNodeId":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2033
    .end local v1    # "i":I
    :cond_3b
    :goto_3b
    return-void
.end method

.method public getA11yNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 2009
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_6

    .line 2010
    const/4 v0, 0x0

    return-object v0

    .line 2012
    :cond_6
    iget-wide v1, p0, Landroid/view/AccessibilityInteractionController$VirtualNode;->mInfoId:J

    .line 2013
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v1

    .line 2012
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method
