.class public Landroid/view/View$DragShadowBuilder;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragShadowBuilder"
.end annotation


# instance fields
.field private mSemLastTouchPoint:Landroid/graphics/Point;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSemLastTouchPoint(Landroid/view/View$DragShadowBuilder;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 29281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    .line 29282
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 29283
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 29270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    .line 29271
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    .line 29272
    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .registers 2

    .line 29297
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 29362
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29363
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_e

    .line 29364
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_15

    .line 29366
    :cond_e
    const-string v1, "View"

    const-string v2, "Asked to draw drag shadow but no view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29368
    :goto_15
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6
    .param p1, "outShadowSize"    # Landroid/graphics/Point;
    .param p2, "outShadowTouchPoint"    # Landroid/graphics/Point;

    .line 29345
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29346
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_21

    .line 29347
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 29348
    iget v1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_28

    .line 29350
    :cond_21
    const-string v1, "View"

    const-string v2, "Asked for drag thumb metrics but no view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29352
    :goto_28
    return-void
.end method

.method public semGetLastTouchPoint()Landroid/graphics/Point;
    .registers 2

    .line 29320
    iget-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public semSetLastTouchPoint(FF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 29313
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/view/View$DragShadowBuilder;->mSemLastTouchPoint:Landroid/graphics/Point;

    .line 29314
    return-void
.end method
