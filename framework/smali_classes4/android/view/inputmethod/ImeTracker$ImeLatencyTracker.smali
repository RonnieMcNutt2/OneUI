.class public final Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImeLatencyTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;-><init>()V

    return-void
.end method

.method private shouldMonitorLatency(I)Z
    .registers 4
    .param p1, "reason"    # I

    .line 749
    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v1, 0x4

    if-eq p1, v1, :cond_16

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_16

    const/16 v1, 0x1c

    if-eq p1, v1, :cond_16

    const/4 v1, 0x3

    if-eq p1, v1, :cond_16

    const/4 v1, 0x5

    if-ne p1, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :cond_16
    :goto_16
    return v0
.end method


# virtual methods
.method public onHidden(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 807
    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 808
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 809
    return-void
.end method

.method public onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 6
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 795
    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 796
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 797
    return-void
.end method

.method public onHideFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 784
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onHideCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 785
    return-void
.end method

.method public onRequestHide(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 8
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "origin"    # I
    .param p3, "reason"    # I
    .param p4, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 770
    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 771
    :cond_7
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 774
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    .line 772
    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 775
    return-void
.end method

.method public onRequestShow(Landroid/view/inputmethod/ImeTracker$Token;IILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 8
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "origin"    # I
    .param p3, "reason"    # I
    .param p4, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 760
    invoke-direct {p0, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->shouldMonitorLatency(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 761
    :cond_7
    invoke-interface {p4}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 764
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v1

    .line 762
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    .line 765
    return-void
.end method

.method public onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 6
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 789
    invoke-interface {p3}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 790
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    .line 791
    return-void
.end method

.method public onShowFailed(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 4
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "phase"    # I
    .param p3, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 779
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/inputmethod/ImeTracker$ImeLatencyTracker;->onShowCancelled(Landroid/view/inputmethod/ImeTracker$Token;ILandroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V

    .line 780
    return-void
.end method

.method public onShown(Landroid/view/inputmethod/ImeTracker$Token;Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;)V
    .registers 5
    .param p1, "token"    # Landroid/view/inputmethod/ImeTracker$Token;
    .param p2, "latencyContext"    # Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;

    .line 801
    invoke-interface {p2}, Landroid/view/inputmethod/ImeTracker$InputMethodLatencyContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    .line 802
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 803
    return-void
.end method
