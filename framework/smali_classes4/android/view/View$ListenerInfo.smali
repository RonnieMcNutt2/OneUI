.class Landroid/view/View$ListenerInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerInfo"
.end annotation


# instance fields
.field private mHandwritingArea:Landroid/graphics/Rect;

.field private mKeepClearRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mOnApplyWindowInsetsListener:Landroid/view/View$OnApplyWindowInsetsListener;

.field private mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/view/View$OnAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mOnCapturedPointerListener:Landroid/view/View$OnCapturedPointerListener;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnContextClickListener:Landroid/view/View$OnContextClickListener;

.field protected mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field protected mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnLayoutChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnReceiveContentListener:Landroid/view/OnReceiveContentListener;

.field protected mOnScrollChangeListener:Landroid/view/View$OnScrollChangeListener;

.field private mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPositionChangedUpdate:Ljava/lang/Runnable;

.field public mPositionUpdateListener:Landroid/graphics/RenderNode$PositionUpdateListener;

.field private mPreferKeepClear:Z

.field mScrollCaptureCallback:Landroid/view/ScrollCaptureCallback;

.field private mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mUnhandledKeyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnUnhandledKeyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUnrestrictedKeepClearRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mWindowInsetsAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandwritingArea(Landroid/view/View$ListenerInfo;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mHandwritingArea:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeepClearRects(Landroid/view/View$ListenerInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mKeepClearRects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnAttachStateChangeListeners(Landroid/view/View$ListenerInfo;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnDragListener(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnDragListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnGenericMotionListener(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnGenericMotionListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnHoverListener(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnHoverListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnKeyListener(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnKeyListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnLayoutChangeListeners(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnReceiveContentListener(Landroid/view/View$ListenerInfo;)Landroid/view/OnReceiveContentListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnReceiveContentListener:Landroid/view/OnReceiveContentListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnSystemUiVisibilityChangeListener(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnSystemUiVisibilityChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnTouchListener(Landroid/view/View$ListenerInfo;)Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPositionChangedUpdate(Landroid/view/View$ListenerInfo;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mPositionChangedUpdate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferKeepClear(Landroid/view/View$ListenerInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/View$ListenerInfo;->mPreferKeepClear:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemGestureExclusionRects(Landroid/view/View$ListenerInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mSystemGestureExclusionRects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnhandledKeyListeners(Landroid/view/View$ListenerInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mUnhandledKeyListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnrestrictedKeepClearRects(Landroid/view/View$ListenerInfo;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/view/View$ListenerInfo;->mUnrestrictedKeepClearRects:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHandwritingArea(Landroid/view/View$ListenerInfo;Landroid/graphics/Rect;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mHandwritingArea:Landroid/graphics/Rect;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKeepClearRects(Landroid/view/View$ListenerInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mKeepClearRects:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnAttachStateChangeListeners(Landroid/view/View$ListenerInfo;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnAttachStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnDragListener(Landroid/view/View$ListenerInfo;Landroid/view/View$OnDragListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnDragListener:Landroid/view/View$OnDragListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnGenericMotionListener(Landroid/view/View$ListenerInfo;Landroid/view/View$OnGenericMotionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnHoverListener(Landroid/view/View$ListenerInfo;Landroid/view/View$OnHoverListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnKeyListener(Landroid/view/View$ListenerInfo;Landroid/view/View$OnKeyListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnLayoutChangeListeners(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnLayoutChangeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnReceiveContentListener(Landroid/view/View$ListenerInfo;Landroid/view/OnReceiveContentListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnReceiveContentListener:Landroid/view/OnReceiveContentListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnSystemUiVisibilityChangeListener(Landroid/view/View$ListenerInfo;Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOnTouchListener(Landroid/view/View$ListenerInfo;Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositionChangedUpdate(Landroid/view/View$ListenerInfo;Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mPositionChangedUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreferKeepClear(Landroid/view/View$ListenerInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/View$ListenerInfo;->mPreferKeepClear:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSystemGestureExclusionRects(Landroid/view/View$ListenerInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mSystemGestureExclusionRects:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUnhandledKeyListeners(Landroid/view/View$ListenerInfo;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mUnhandledKeyListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUnrestrictedKeepClearRects(Landroid/view/View$ListenerInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/view/View$ListenerInfo;->mUnrestrictedKeepClearRects:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 4873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4956
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$ListenerInfo;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 4957
    iput-object v0, p0, Landroid/view/View$ListenerInfo;->mKeepClearRects:Ljava/util/List;

    .line 4958
    iput-object v0, p0, Landroid/view/View$ListenerInfo;->mUnrestrictedKeepClearRects:Ljava/util/List;

    .line 4959
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/View$ListenerInfo;->mPreferKeepClear:Z

    .line 4960
    iput-object v0, p0, Landroid/view/View$ListenerInfo;->mHandwritingArea:Landroid/graphics/Rect;

    .line 4874
    return-void
.end method
