.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    }
.end annotation


# static fields
.field static final SELECT_HIGHLIGHT_ANIM_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "SemDragAndDropAnimationCore"

.field static final TRANSLATE_ITEM_ANIM_DURATION:I = 0x12c


# instance fields
.field itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

.field private mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mView:Landroid/view/View;

    return-object p0
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;-><init>(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mView:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V
    .registers 2
    .param p1, "l"    # Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 33
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 34
    return-void
.end method
