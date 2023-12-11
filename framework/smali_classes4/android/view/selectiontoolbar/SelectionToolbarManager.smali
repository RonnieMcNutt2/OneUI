.class public final Landroid/view/selectiontoolbar/SelectionToolbarManager;
.super Ljava/lang/Object;
.source "SelectionToolbarManager.java"


# static fields
.field public static final ERROR_DO_NOT_ALLOW_MULTIPLE_TOOL_BAR:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "SelectionToolbar"

.field public static final NO_TOOLBAR_ID:J = 0x0L

.field private static final REMOTE_SELECTION_TOOLBAR_ENABLED:Ljava/lang/String; = "remote_selection_toolbar_enabled"

.field private static final TAG:Ljava/lang/String; = "SelectionToolbar"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/selectiontoolbar/ISelectionToolbarManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    .line 68
    return-void
.end method

.method private isRemoteSelectionToolbarEnabled()Z
    .registers 4

    .line 107
    const-string/jumbo v0, "remote_selection_toolbar_enabled"

    const/4 v1, 0x0

    const-string/jumbo v2, "selection_toolbar"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRemoteSelectionToolbarEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    const-class v0, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    .line 117
    .local v0, "manager":Landroid/view/selectiontoolbar/SelectionToolbarManager;
    if-eqz v0, :cond_f

    .line 118
    invoke-direct {v0}, Landroid/view/selectiontoolbar/SelectionToolbarManager;->isRemoteSelectionToolbarEnabled()Z

    move-result v1

    return v1

    .line 120
    :cond_f
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dismissToolbar(J)V
    .registers 5
    .param p1, "widgetToken"    # J

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    iget-object v1, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/view/selectiontoolbar/ISelectionToolbarManager;->dismissToolbar(JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 103
    nop

    .line 104
    return-void

    .line 101
    :catch_d
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hideToolbar(J)V
    .registers 5
    .param p1, "widgetToken"    # J

    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    iget-object v1, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/view/selectiontoolbar/ISelectionToolbarManager;->hideToolbar(JI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    .line 92
    nop

    .line 93
    return-void

    .line 90
    :catch_d
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;)V
    .registers 5
    .param p1, "showInfo"    # Landroid/view/selectiontoolbar/ShowInfo;
    .param p2, "callback"    # Landroid/view/selectiontoolbar/ISelectionToolbarCallback;

    .line 76
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mService:Landroid/view/selectiontoolbar/ISelectionToolbarManager;

    iget-object v1, p0, Landroid/view/selectiontoolbar/SelectionToolbarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/view/selectiontoolbar/ISelectionToolbarManager;->showToolbar(Landroid/view/selectiontoolbar/ShowInfo;Landroid/view/selectiontoolbar/ISelectionToolbarCallback;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 81
    nop

    .line 82
    return-void

    .line 79
    :catch_13
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
