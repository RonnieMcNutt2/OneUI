.class public Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
.super Ljava/lang/Object;
.source "FrameTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadedRendererWrapper"
.end annotation


# instance fields
.field private final mRenderer:Landroid/view/ThreadedRenderer;


# direct methods
.method public constructor <init>(Landroid/view/ThreadedRenderer;)V
    .registers 2
    .param p1, "renderer"    # Landroid/view/ThreadedRenderer;

    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 793
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 802
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VIEW_DEBUG_DISABLE_HWRENDERING:Z

    if-eqz v0, :cond_5

    .line 803
    return-void

    .line 806
    :cond_5
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 807
    return-void
.end method

.method public removeObserver(Landroid/graphics/HardwareRendererObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/graphics/HardwareRendererObserver;

    .line 816
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VIEW_DEBUG_DISABLE_HWRENDERING:Z

    if-eqz v0, :cond_5

    .line 817
    return-void

    .line 820
    :cond_5
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 821
    return-void
.end method
