.class final Landroid/view/inputmethod/InputMethodManager$DelegateImpl;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Landroid/view/ImeFocusController$InputMethodManagerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelegateImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method static bridge synthetic -$$Nest$msetCurrentRootViewLocked(Landroid/view/inputmethod/InputMethodManager$DelegateImpl;Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2

    .line 794
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$DelegateImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method

.method private setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V
    .registers 4
    .param p1, "rootView"    # Landroid/view/ViewRootImpl;

    .line 944
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V

    .line 945
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    .line 946
    return-void
.end method


# virtual methods
.method public onPostWindowGainedFocus(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 27
    .param p1, "viewForWindowFocus"    # Landroid/view/View;
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 808
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v2, 0x0

    .line 809
    .local v2, "forceFocus":Z
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    .line 811
    :try_start_c
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x1

    invoke-static {v0, v8, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 815
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    if-ne v0, v8, :cond_1c

    goto :goto_1d

    :cond_1c
    move v4, v5

    :goto_1d
    move v0, v4

    .line 817
    .local v0, "nextFocusIsServedView":Z
    if-eqz v0, :cond_29

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    .line 818
    invoke-static {v4, v8}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mhasActiveInputConnectionInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 819
    const/4 v2, 0x1

    .line 821
    .end local v0    # "nextFocusIsServedView":Z
    :cond_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_103

    .line 823
    iget v15, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 824
    .local v15, "softInputMode":I
    iget v14, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 826
    .local v14, "windowFlags":I
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v8, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetStartInputFlags(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)I

    move-result v0

    .line 827
    .local v0, "startInputFlags":I
    or-int/lit8 v22, v0, 0x8

    .line 829
    .end local v0    # "startInputFlags":I
    .local v22, "startInputFlags":I
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManager.DelegateImpl#startInputAsyncOnWindowFocusGain"

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    .line 834
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    .line 835
    :try_start_47
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_fc

    if-nez v0, :cond_54

    .line 836
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4f

    return-void

    .line 844
    :catchall_4f
    move-exception v0

    move v6, v14

    move v7, v15

    goto/16 :goto_ff

    .line 838
    :cond_54
    :try_start_54
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_fc

    if-eqz v0, :cond_71

    .line 839
    :try_start_5c
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_69

    const-string v0, "InputMethodManager"

    const-string v3, "Restarting due to mRestartOnNextWindowFocus as true"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_69
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V
    :try_end_6e
    .catchall {:try_start_5c .. :try_end_6e} :catchall_4f

    .line 841
    const/4 v2, 0x1

    move v13, v2

    goto :goto_72

    .line 838
    :cond_71
    move v13, v2

    .line 843
    .end local v2    # "forceFocus":Z
    .local v13, "forceFocus":Z
    :goto_72
    :try_start_72
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v0, v13, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v0

    move/from16 v23, v0

    .line 844
    .local v23, "checkFocusResult":Z
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_f6

    .line 846
    if-eqz v23, :cond_8f

    .line 851
    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    move-object/from16 v4, p1

    move/from16 v5, v22

    move v6, v15

    move v7, v14

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 853
    return-void

    .line 857
    :cond_8f
    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 860
    :try_start_94
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_ee

    if-eqz v0, :cond_a7

    .line 861
    :try_start_9a
    const-string v0, "InputMethodManager"

    const-string v3, "Reporting focus gain, without startInput"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a2

    goto :goto_a7

    .line 878
    :catchall_a2
    move-exception v0

    move v5, v13

    move v6, v14

    move v7, v15

    goto :goto_f2

    .line 865
    :cond_a7
    :goto_a7
    :try_start_a7
    const-string v0, "IMM.startInputOrWindowGainedFocus"

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 867
    const-string v0, "InputMethodManager"

    const-string/jumbo v5, "startInputAsyncOnWindowFocusGain - IInputMethodManagerGlobalInvoker.startInputOrWindowGainedFocus"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v10, 0x2

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmClient(Landroid/view/inputmethod/InputMethodManager;)Lcom/android/internal/inputmethod/IInputMethodClient$Stub;

    move-result-object v11

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 875
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 876
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v21
    :try_end_dd
    .catchall {:try_start_a7 .. :try_end_dd} :catchall_ee

    .line 869
    move v5, v13

    .end local v13    # "forceFocus":Z
    .local v5, "forceFocus":Z
    move/from16 v13, v22

    move v6, v14

    .end local v14    # "windowFlags":I
    .local v6, "windowFlags":I
    move v14, v15

    move v7, v15

    .end local v15    # "softInputMode":I
    .local v7, "softInputMode":I
    move v15, v6

    move/from16 v19, v0

    :try_start_e6
    invoke-static/range {v10 .. v21}, Landroid/view/inputmethod/IInputMethodManagerGlobalInvoker;->startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 877
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 878
    monitor-exit v2

    .line 879
    return-void

    .line 878
    .end local v5    # "forceFocus":Z
    .end local v6    # "windowFlags":I
    .end local v7    # "softInputMode":I
    .restart local v13    # "forceFocus":Z
    .restart local v14    # "windowFlags":I
    .restart local v15    # "softInputMode":I
    :catchall_ee
    move-exception v0

    move v5, v13

    move v6, v14

    move v7, v15

    .end local v13    # "forceFocus":Z
    .end local v14    # "windowFlags":I
    .end local v15    # "softInputMode":I
    .restart local v5    # "forceFocus":Z
    .restart local v6    # "windowFlags":I
    .restart local v7    # "softInputMode":I
    :goto_f2
    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_e6 .. :try_end_f3} :catchall_f4

    throw v0

    :catchall_f4
    move-exception v0

    goto :goto_f2

    .line 844
    .end local v5    # "forceFocus":Z
    .end local v6    # "windowFlags":I
    .end local v7    # "softInputMode":I
    .end local v23    # "checkFocusResult":Z
    .restart local v13    # "forceFocus":Z
    .restart local v14    # "windowFlags":I
    .restart local v15    # "softInputMode":I
    :catchall_f6
    move-exception v0

    move v5, v13

    move v6, v14

    move v7, v15

    move v2, v5

    .end local v13    # "forceFocus":Z
    .end local v14    # "windowFlags":I
    .end local v15    # "softInputMode":I
    .restart local v5    # "forceFocus":Z
    .restart local v6    # "windowFlags":I
    .restart local v7    # "softInputMode":I
    goto :goto_ff

    .end local v5    # "forceFocus":Z
    .end local v6    # "windowFlags":I
    .end local v7    # "softInputMode":I
    .restart local v2    # "forceFocus":Z
    .restart local v14    # "windowFlags":I
    .restart local v15    # "softInputMode":I
    :catchall_fc
    move-exception v0

    move v6, v14

    move v7, v15

    .end local v14    # "windowFlags":I
    .end local v15    # "softInputMode":I
    .restart local v6    # "windowFlags":I
    .restart local v7    # "softInputMode":I
    :goto_ff
    :try_start_ff
    monitor-exit v4
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_101

    throw v0

    :catchall_101
    move-exception v0

    goto :goto_ff

    .line 821
    .end local v6    # "windowFlags":I
    .end local v7    # "softInputMode":I
    .end local v22    # "startInputFlags":I
    :catchall_103
    move-exception v0

    :try_start_104
    monitor-exit v3
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw v0
.end method

.method public onPreWindowGainedFocus(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 799
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 800
    :try_start_5
    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    .line 801
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    .line 802
    monitor-exit v0

    .line 803
    return-void

    .line 802
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onScheduledCheckFocus(Landroid/view/ViewRootImpl;)V
    .registers 10
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 899
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 900
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 901
    monitor-exit v0

    return-void

    .line 903
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1c

    .line 904
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputOnWindowFocusGainInternal(Landroid/view/inputmethod/InputMethodManager;ILandroid/view/View;III)Z

    .line 907
    return-void

    .line 903
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;Landroid/view/ViewRootImpl;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 911
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 912
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eq v1, v2, :cond_11

    .line 913
    monitor-exit v0

    return-void

    .line 915
    :cond_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmNextServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1f

    .line 916
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmNextServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 918
    :cond_1f
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2a

    .line 919
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 921
    :cond_2a
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onViewFocusChanged(Landroid/view/View;Z)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 894
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    .line 895
    return-void
.end method

.method public onWindowDismissed(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 926
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 927
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_d

    .line 928
    monitor-exit v0

    return-void

    .line 930
    :cond_d
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 932
    sget-boolean v1, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v1, :cond_21

    .line 933
    const-string v1, "InputMethodManager"

    const-string/jumbo v2, "onWindowDismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_21
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    .line 938
    :cond_26
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->setCurrentRootViewLocked(Landroid/view/ViewRootImpl;)V

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public onWindowLostFocus(Landroid/view/ViewRootImpl;)V
    .registers 5
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 883
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    .line 884
    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-ne v1, p1, :cond_15

    .line 885
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootViewWindowFocused:Z

    .line 887
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z

    .line 889
    :cond_15
    monitor-exit v0

    .line 890
    return-void

    .line 889
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method
