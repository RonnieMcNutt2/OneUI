.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final HIDE:I = 0x1

.field private static final SHOW:I


# instance fields
.field private final mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field mDuration:I

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field mHorizontalMargin:F

.field mIsCustomOffset:Z

.field mIsCustomView:Z

.field mNextView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mPackageName:Ljava/lang/String;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mPresenter:Landroid/widget/ToastPresenter;

.field final mToken:Landroid/os/Binder;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmParams(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Binder;Ljava/util/List;Landroid/os/Looper;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/Binder;
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Binder;",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 925
    .local p4, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Toast$Callback;>;"
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 916
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Toast$TN;->mIsCustomView:Z

    .line 926
    nop

    .line 927
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 926
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 928
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    new-instance v1, Landroid/widget/ToastPresenter;

    invoke-static {}, Landroid/widget/Toast;->-$$Nest$smgetService()Landroid/app/INotificationManager;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p2}, Landroid/widget/ToastPresenter;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;Landroid/app/INotificationManager;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    .line 930
    invoke-virtual {v1}, Landroid/widget/ToastPresenter;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 931
    iput-object p2, p0, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    .line 932
    iput-object p3, p0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    .line 933
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 935
    new-instance v1, Landroid/widget/Toast$TN$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p5, v2}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 965
    return-void
.end method

.method private getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation

    .line 968
    iget-object v0, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    monitor-enter v0

    .line 969
    :try_start_3
    iget-object v1, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 970
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toast$TN;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 972
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v0

    return-object v1

    .line 974
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 997
    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CANCEL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toast"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_1c
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 999
    return-void
.end method

.method public handleHide()V
    .registers 6

    .line 1031
    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HANDLE HIDE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toast"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_28
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_4f

    .line 1033
    iget-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    invoke-virtual {v1}, Landroid/widget/ToastPresenter;->getView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    const-string v1, "Trying to hide toast view different than the last one displayed"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1035
    iget-object v0, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    new-instance v1, Landroid/widget/Toast$CallbackBinder;

    invoke-direct {p0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToastPresenter;->hide(Landroid/app/ITransientNotificationCallback;)V

    .line 1036
    iput-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 1038
    :cond_4f
    return-void
.end method

.method public handleShow(Landroid/os/IBinder;)V
    .registers 15
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HANDLE SHOW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNextView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN;->mNextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toast"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_91

    .line 1008
    :cond_43
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_90

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_90

    .line 1010
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 1013
    iget-boolean v0, p0, Landroid/widget/Toast$TN;->mIsCustomView:Z

    const/high16 v1, 0x20000

    if-eqz v0, :cond_5e

    .line 1014
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    goto :goto_63

    .line 1016
    :cond_5e
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 1020
    :goto_63
    iget-object v0, p0, Landroid/widget/Toast$TN;->mNextView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 1021
    if-eqz v2, :cond_90

    .line 1022
    iget-object v1, p0, Landroid/widget/Toast$TN;->mPresenter:Landroid/widget/ToastPresenter;

    iget-object v3, p0, Landroid/widget/Toast$TN;->mToken:Landroid/os/Binder;

    iget v5, p0, Landroid/widget/Toast$TN;->mDuration:I

    iget v6, p0, Landroid/widget/Toast$TN;->mGravity:I

    iget v7, p0, Landroid/widget/Toast$TN;->mX:I

    iget v8, p0, Landroid/widget/Toast$TN;->mY:I

    iget v9, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iget v10, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    new-instance v11, Landroid/widget/Toast$CallbackBinder;

    .line 1024
    invoke-direct {p0}, Landroid/widget/Toast$TN;->getCallbacks()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v4, v12}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V

    .line 1022
    move-object v4, p1

    invoke-virtual/range {v1 .. v11}, Landroid/widget/ToastPresenter;->show(Landroid/view/View;Landroid/os/IBinder;Landroid/os/IBinder;IIIIFFLandroid/app/ITransientNotificationCallback;)V

    .line 1027
    :cond_90
    return-void

    .line 1006
    :cond_91
    :goto_91
    return-void
.end method

.method public hide()V
    .registers 3

    .line 992
    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIDE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toast"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_1c
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 994
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 983
    sget-boolean v0, Landroid/widget/Toast;->localLOGV:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toast"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_1c
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 985
    return-void
.end method
