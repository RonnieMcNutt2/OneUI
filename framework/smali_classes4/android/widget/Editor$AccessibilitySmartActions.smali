.class final Landroid/widget/Editor$AccessibilitySmartActions;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilitySmartActions"
.end annotation


# instance fields
.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            "Landroid/app/RemoteAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$maddAction(Landroid/widget/Editor$AccessibilitySmartActions;Landroid/app/RemoteAction;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;->addAction(Landroid/app/RemoteAction;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreset(Landroid/widget/Editor$AccessibilitySmartActions;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Editor$AccessibilitySmartActions;->reset()V

    return-void
.end method

.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 9997
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9994
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    .line 9998
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mTextView:Landroid/widget/TextView;

    .line 9999
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/Editor$AccessibilitySmartActions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$AccessibilitySmartActions;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private addAction(Landroid/app/RemoteAction;)V
    .registers 7
    .param p1, "action"    # Landroid/app/RemoteAction;

    .line 10002
    iget-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const v1, 0x10001000

    add-int/2addr v0, v1

    .line 10003
    .local v0, "actionId":I
    iget-object v1, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 10004
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10003
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10005
    return-void
.end method

.method private reset()V
    .registers 2

    .line 10008
    iget-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 10009
    return-void
.end method


# virtual methods
.method onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 10012
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 10013
    iget-object v1, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 10012
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10015
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method performAccessibilityAction(I)Z
    .registers 5
    .param p1, "actionId"    # I

    .line 10018
    iget-object v0, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 10019
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;Landroid/app/RemoteAction;>;"
    if-eqz v0, :cond_1d

    .line 10020
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$AccessibilitySmartActions;->mTextView:Landroid/widget/TextView;

    .line 10021
    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 10022
    const/4 v1, 0x1

    return v1

    .line 10024
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method
