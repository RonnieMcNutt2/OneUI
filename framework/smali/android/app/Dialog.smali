.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$OnWindowDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x33

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_POP_OVER_DARK_DIM_AMOUNT:F = 0.65f

.field private static final DIALOG_POP_OVER_DIM_AMOUNT:F = 0.18f

.field private static final DIALOG_POP_OVER_ELEVATION:F = 8.0f

.field private static final DIALOG_REDUCE_TRANSPARENCY_DIM_AMOUNT:F = 0.35f

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final MAX_LOOP_COUNT:I = 0x64

.field private static final SAMSUNG_BASIC_INTERACTION_METADATA_NAME:Ljava/lang/String; = "SamsungBasicInteraction"

.field private static final SAMSUNG_BASIC_INTERACTION_METADATA_VALUE:Ljava/lang/String; = "SEP10"

.field public static final SEM_ANCHOR_TYPE_DEFAULT:I = 0x0

.field public static final SEM_ANCHOR_TYPE_TOOLBAR:I = 0x1

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"

.field private static final UNPOSITIONED_DIALOG:I = -0x1

.field protected static mIsDarkActionBar:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeTypeStarting:I

.field private mAnchorType:I

.field private mAnchorView:Landroid/view/View;

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private mDismissOverride:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFocus:Z

.field private mIsDeviceDefault:Z

.field private mIsDeviceDefaultDark:Z

.field private mIsSamsungBasicInteraction:Z

.field private final mListenersHandler:Landroid/os/Handler;

.field private mNeedToUpdate:Z

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mRemoveOnLayoutChangeListnerRunnable:Ljava/lang/Runnable;

.field private mRootView:Landroid/view/View;

.field private mRootViewOrientation:I

.field private mRootViewSwWidthDp:I

.field private mSearchEvent:Landroid/view/SearchEvent;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field final mWindow:Landroid/view/Window;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$4ch8lBAqyKVxAKgI6tMDDoOsIqc(Landroid/app/Dialog;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Dialog;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$AJAYhhdH1t57AOR4r7yFr-xk8Ps(Landroid/app/Dialog;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Dialog;->lambda$semSetAnchor$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$L8sDAnQzIRzC33mguF0QxZDISh0(Landroid/app/Dialog;Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/app/Dialog;->lambda$new$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/Dialog;->mIsDarkActionBar:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 260
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 279
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 280
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .line 283
    const-string v0, "SEP10"

    const-string v1, "SamsungBasicInteraction"

    const-string v2, "Dialog"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 163
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/app/Dialog;->mCreated:Z

    .line 164
    iput-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    .line 166
    iput-boolean v4, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 168
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 183
    iput v4, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 185
    new-instance v5, Landroid/app/Dialog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    iput-object v5, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 198
    iput-boolean v4, p0, Landroid/app/Dialog;->mHasFocus:Z

    .line 206
    iput-boolean v4, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z

    .line 220
    iput v4, p0, Landroid/app/Dialog;->mRootViewOrientation:I

    .line 221
    iput v4, p0, Landroid/app/Dialog;->mRootViewSwWidthDp:I

    .line 224
    new-instance v5, Landroid/app/Dialog$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;)V

    iput-object v5, p0, Landroid/app/Dialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 229
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/app/Dialog;->mRemoveOnLayoutChangeListnerRunnable:Ljava/lang/Runnable;

    .line 284
    if-eqz p3, :cond_52

    .line 285
    if-nez p2, :cond_4a

    .line 286
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 287
    .local v6, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1010308

    invoke-virtual {v7, v8, v6, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 288
    iget p2, v6, Landroid/util/TypedValue;->resourceId:I

    .line 290
    .end local v6    # "outValue":Landroid/util/TypedValue;
    :cond_4a
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_54

    .line 292
    :cond_52
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 295
    :goto_54
    const-string/jumbo v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 297
    new-instance v7, Lcom/android/internal/policy/PhoneWindow;

    iget-object v8, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 298
    .local v7, "w":Landroid/view/Window;
    iput-object v7, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 299
    invoke-virtual {v7, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 300
    invoke-virtual {v7, p0}, Landroid/view/Window;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 301
    new-instance v8, Landroid/app/Dialog$$ExternalSyntheticLambda3;

    invoke-direct {v8, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V

    .line 306
    invoke-virtual {v7, v6, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 307
    const/16 v5, 0x11

    invoke-virtual {v7, v5}, Landroid/view/Window;->setGravity(I)V

    .line 311
    :try_start_7e
    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 311
    const/16 v8, 0x80

    invoke-virtual {v5, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 313
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_a0

    .line 314
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, "data":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a0} :catch_a1

    .line 319
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "data":Ljava/lang/String;
    :cond_a0
    goto :goto_b8

    .line 317
    :catch_a1
    move-exception v5

    .line 318
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exceptioin!! "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_b8
    const/4 v5, 0x0

    .line 321
    .local v5, "isMetaDataInActivity":Z
    invoke-direct {p0, p1}, Landroid/app/Dialog;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v6

    .line 322
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_d3

    .line 323
    invoke-virtual {v6}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 324
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_d3

    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v9, :cond_d3

    .line 325
    iget-object v9, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 332
    .end local v1    # "data":Ljava/lang/String;
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_d3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 333
    .local v0, "themeValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v8, 0x11200d7

    invoke-virtual {v1, v8, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 334
    iget v1, v0, Landroid/util/TypedValue;->data:I

    const/16 v8, 0x50

    if-eqz v1, :cond_108

    .line 335
    iput-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    .line 336
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 337
    .local v1, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11200d8

    invoke-virtual {v9, v10, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 338
    iget v9, v1, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_fe

    goto :goto_ff

    :cond_fe
    move v3, v4

    :goto_ff
    iput-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefaultDark:Z

    .line 339
    sget-boolean v3, Landroid/app/Dialog;->mIsDarkActionBar:Z

    if-nez v3, :cond_108

    .line 340
    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 343
    .end local v1    # "colorValue":Landroid/util/TypedValue;
    :cond_108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsDeviceDefault = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mIsSamsungBasicInteraction = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isMetaDataInActivity = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v1, p0, Landroid/app/Dialog;->mIsSamsungBasicInteraction:Z

    if-nez v1, :cond_13d

    if-eqz v5, :cond_140

    .line 345
    :cond_13d
    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    .line 348
    :cond_140
    new-instance v1, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v1, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 349
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 365
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 366
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 367
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 368
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 359
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 360
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 361
    return-void
.end method

.method private alignToAnchor()V
    .registers 17

    .line 609
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 610
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, v0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 612
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {p0 .. p0}, Landroid/app/Dialog;->isSupportAnchor()Z

    move-result v3

    const-string v4, "Dialog"

    const/4 v5, 0x0

    if-eqz v3, :cond_126

    iget-object v3, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    if-nez v3, :cond_1d

    goto/16 :goto_126

    .line 621
    :cond_1d
    iget-boolean v6, v0, Landroid/app/Dialog;->mNeedToUpdate:Z

    if-nez v6, :cond_22

    .line 622
    return-void

    .line 625
    :cond_22
    const/4 v6, 0x2

    new-array v7, v6, [I

    .line 626
    .local v7, "screenPos":[I
    new-array v8, v6, [I

    .line 628
    .local v8, "windowPos":[I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 629
    .local v3, "width":I
    iget-object v9, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 631
    .local v9, "height":I
    iget-object v10, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 632
    iget-object v10, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 635
    iget-object v10, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_5a

    aget v10, v7, v5

    if-gtz v10, :cond_5a

    aget v10, v8, v5

    if-gtz v10, :cond_5a

    aget v10, v7, v11

    if-gtz v10, :cond_5a

    aget v10, v8, v11

    if-gtz v10, :cond_5a

    .line 637
    const-string v5, "AnchorView position is invalid, so do not update position"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void

    .line 641
    :cond_5a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x5

    if-eq v10, v12, :cond_77

    .line 642
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v10

    const/4 v12, 0x6

    if-ne v10, v12, :cond_75

    goto :goto_77

    :cond_75
    move v10, v5

    goto :goto_78

    :cond_77
    :goto_77
    move v10, v11

    .line 646
    .local v10, "isMultiWindowMode":Z
    :goto_78
    const v12, 0x10504f4

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 647
    .local v12, "statusBarHeight":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v13

    iget-object v14, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v13

    .line 649
    .local v13, "appView":Landroid/view/View;
    if-nez v13, :cond_a1

    .line 650
    iget-object v14, v0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v14

    .line 651
    .local v14, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_9c

    .line 652
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v13

    goto :goto_a1

    .line 654
    :cond_9c
    const-string v15, "Cannot find app view"

    invoke-static {v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_a1
    :goto_a1
    if-eqz v13, :cond_c4

    .line 659
    invoke-virtual {v13}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v14

    .line 660
    .local v14, "insets":Landroid/view/WindowInsets;
    if-eqz v14, :cond_c4

    .line 661
    invoke-virtual {v14}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v12

    .line 662
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "top inset = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v14    # "insets":Landroid/view/WindowInsets;
    :cond_c4
    if-nez v10, :cond_d2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v4

    if-eqz v4, :cond_e3

    .line 667
    :cond_d2
    if-eqz v10, :cond_db

    aget v4, v7, v11

    aget v6, v8, v11

    if-eq v4, v6, :cond_db

    .line 668
    const/4 v12, 0x0

    .line 670
    :cond_db
    aget v4, v8, v5

    aput v4, v7, v5

    .line 671
    aget v4, v8, v11

    aput v4, v7, v11

    .line 674
    :cond_e3
    iget v4, v0, Landroid/app/Dialog;->mAnchorType:I

    if-ne v4, v11, :cond_ff

    .line 675
    const v4, 0x1050363

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 676
    .local v4, "actionButtonWidth":I
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_fe

    .line 677
    aget v6, v7, v5

    add-int/2addr v6, v3

    sub-int/2addr v6, v4

    aput v6, v7, v5

    .line 679
    :cond_fe
    move v3, v4

    .line 682
    .end local v4    # "actionButtonWidth":I
    :cond_ff
    invoke-direct/range {p0 .. p0}, Landroid/app/Dialog;->semGetDialogWidth()I

    move-result v4

    .line 683
    .local v4, "dialogWidth":I
    sub-int v6, v4, v3

    const/4 v14, 0x2

    div-int/2addr v6, v14

    .line 685
    .local v6, "xOffset":I
    const/16 v14, 0x33

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 686
    aget v14, v7, v5

    sub-int/2addr v14, v6

    iput v14, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 687
    aget v11, v7, v11

    add-int/2addr v11, v9

    sub-int/2addr v11, v12

    const v14, 0x10503e4

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v11, v14

    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 688
    iget-object v11, v0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v11, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 689
    iput-boolean v5, v0, Landroid/app/Dialog;->mNeedToUpdate:Z

    .line 690
    return-void

    .line 613
    .end local v3    # "width":I
    .end local v4    # "dialogWidth":I
    .end local v6    # "xOffset":I
    .end local v7    # "screenPos":[I
    .end local v8    # "windowPos":[I
    .end local v9    # "height":I
    .end local v10    # "isMultiWindowMode":Z
    .end local v12    # "statusBarHeight":I
    .end local v13    # "appView":Landroid/view/View;
    :cond_126
    :goto_126
    const-string v3, "AnchorView is null state or not on Large Screen"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/16 v3, 0x51

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 615
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 616
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 617
    iget-object v3, v0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 618
    return-void
.end method

.method private getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1953
    const/4 v0, 0x0

    .line 1954
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 1955
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 1957
    .local v2, "count":I
    :goto_3
    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    const/16 v3, 0x64

    if-ge v2, v3, :cond_24

    .line 1958
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    .line 1959
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_21

    .line 1961
    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1f

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_20

    .line 1962
    :cond_1f
    const/4 v3, 0x0

    :goto_20
    move-object v1, v3

    .line 1964
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1966
    :cond_24
    return-object v0
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .registers 5

    .line 1650
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1651
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1652
    .local v1, "context":Landroid/content/Context;
    :goto_6
    const/4 v2, 0x0

    if-nez v0, :cond_22

    if-eqz v1, :cond_22

    .line 1653
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    .line 1654
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_6

    .line 1656
    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1f

    .line 1657
    move-object v2, v1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_20

    .line 1658
    :cond_1f
    nop

    :goto_20
    move-object v1, v2

    goto :goto_6

    .line 1661
    :cond_22
    if-nez v0, :cond_25

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    :goto_29
    return-object v2
.end method

.method private isEmbedActivityMode()Z
    .registers 3

    .line 1932
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1933
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    .line 1932
    :goto_2a
    return v0
.end method

.method private isNeedToUpdateAttributes(Landroid/view/View;)Z
    .registers 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "needToUpdate":Z
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 591
    .local v1, "orientation":I
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 593
    .local v2, "smallestScreenWidthDp":I
    iget v3, p0, Landroid/app/Dialog;->mRootViewOrientation:I

    if-eq v1, v3, :cond_24

    .line 594
    iput v1, p0, Landroid/app/Dialog;->mRootViewOrientation:I

    .line 595
    const/4 v0, 0x1

    .line 597
    :cond_24
    iget v3, p0, Landroid/app/Dialog;->mRootViewSwWidthDp:I

    if-eq v2, v3, :cond_2b

    .line 598
    iput v2, p0, Landroid/app/Dialog;->mRootViewSwWidthDp:I

    .line 599
    const/4 v0, 0x1

    .line 601
    :cond_2b
    if-eqz v0, :cond_34

    .line 602
    const-string v3, "Dialog"

    const-string v4, "Dialog LayoutParams update is needed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_34
    return v0
.end method

.method private isSupportAnchor()Z
    .registers 4

    .line 1937
    invoke-direct {p0}, Landroid/app/Dialog;->isEmbedActivityMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1938
    return v1

    .line 1940
    :cond_8
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1941
    return v1

    .line 1943
    :cond_1b
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111026e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1944
    return v1

    .line 1946
    :cond_2b
    const-string v0, "Dialog"

    const-string/jumbo v1, "semSetAnchor isn\'t supported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IIIIIIII)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 226
    invoke-direct {p0, p1}, Landroid/app/Dialog;->isNeedToUpdateAttributes(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Dialog;->mNeedToUpdate:Z

    .line 227
    invoke-direct {p0}, Landroid/app/Dialog;->alignToAnchor()V

    .line 228
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    .line 302
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 305
    :cond_7
    return-void
.end method

.method private synthetic lambda$semSetAnchor$2()V
    .registers 3

    .line 579
    iget-object v0, p0, Landroid/app/Dialog;->mRootView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/Dialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 580
    return-void
.end method

.method private semClearAnchorListener()V
    .registers 2

    .line 1924
    iget-object v0, p0, Landroid/app/Dialog;->mRemoveOnLayoutChangeListnerRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 1925
    return-void

    .line 1927
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1928
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mRemoveOnLayoutChangeListnerRunnable:Ljava/lang/Runnable;

    .line 1929
    return-void
.end method

.method private semGetDialogWidth()I
    .registers 11

    .line 723
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 724
    .local v0, "res":Landroid/content/res/Resources;
    nop

    .line 725
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 724
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 726
    .local v1, "dlgWidth":F
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    .line 727
    .local v2, "isPortrait":Z
    :goto_22
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 729
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 730
    .local v5, "minWidth":Landroid/util/TypedValue;
    if-eqz v2, :cond_3a

    .line 731
    iget-object v6, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010357

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_46

    .line 733
    :cond_3a
    iget-object v6, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1010356

    invoke-virtual {v6, v7, v5, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 736
    :goto_46
    const/4 v6, 0x0

    .line 737
    .local v6, "min":I
    iget v7, v5, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v7, v9, :cond_53

    .line 738
    invoke-virtual {v5, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v6, v7

    goto :goto_5c

    .line 739
    :cond_53
    iget v7, v5, Landroid/util/TypedValue;->type:I

    if-ne v7, v8, :cond_5c

    .line 740
    invoke-virtual {v5, v1, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v7

    float-to-int v6, v7

    .line 743
    :cond_5c
    :goto_5c
    if-nez v6, :cond_7d

    .line 744
    const v7, 0x10503a7

    invoke-virtual {v0, v7, v5, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 745
    iget v3, v5, Landroid/util/TypedValue;->type:I

    if-ne v3, v9, :cond_6e

    .line 746
    invoke-virtual {v5, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v6, v3

    goto :goto_7d

    .line 747
    :cond_6e
    iget v3, v5, Landroid/util/TypedValue;->type:I

    if-ne v3, v8, :cond_7d

    .line 748
    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    invoke-virtual {v5, v3, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    float-to-int v6, v3

    .line 752
    :cond_7d
    :goto_7d
    return v6
.end method

.method private sendDismissMessage()V
    .registers 2

    .line 816
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_b

    .line 818
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 820
    :cond_b
    return-void
.end method

.method private sendShowMessage()V
    .registers 2

    .line 823
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_b

    .line 825
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 827
    :cond_b
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1027
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1028
    return-void
.end method

.method public cancel()V
    .registers 3

    .line 1758
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_12

    .line 1759
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1761
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1763
    :cond_12
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1764
    return-void
.end method

.method public closeOptionsMenu()V
    .registers 3

    .line 1508
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1509
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 1511
    :cond_e
    return-void
.end method

.method public create()V
    .registers 2

    .line 428
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_8

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 431
    :cond_8
    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 774
    invoke-direct {p0}, Landroid/app/Dialog;->semClearAnchorListener()V

    .line 777
    iget-object v0, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 778
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 779
    return-void

    .line 782
    :cond_b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    .line 783
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    goto :goto_22

    .line 785
    :cond_1b
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    :goto_22
    return-void
.end method

.method dismissDialog()V
    .registers 5

    .line 791
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-nez v0, :cond_9

    goto :goto_52

    .line 795
    :cond_9
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 796
    const-string v0, "Dialog"

    const-string v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return-void

    .line 801
    :cond_19
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1b
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3a

    .line 803
    iget-object v2, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_29

    .line 804
    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 806
    :cond_29
    iput-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 807
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 808
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 809
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 811
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 812
    nop

    .line 813
    return-void

    .line 803
    :catchall_3a
    move-exception v2

    iget-object v3, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_42

    .line 804
    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 806
    :cond_42
    iput-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 807
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 808
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 809
    iput-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    .line 811
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    .line 812
    throw v2

    .line 792
    :cond_52
    :goto_52
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1379
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1380
    const/4 v0, 0x1

    return v0

    .line 1382
    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1285
    iget-object v0, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1286
    return v1

    .line 1288
    :cond_10
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1289
    return v1

    .line 1291
    :cond_19
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 1292
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1291
    :goto_23
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1306
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1307
    const/4 v0, 0x1

    return v0

    .line 1309
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 832
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_a

    .line 833
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 836
    :cond_a
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1387
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1388
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1390
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1391
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_28

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v3, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    move v1, v2

    .line 1393
    .local v1, "isFullScreen":Z
    :goto_29
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 1395
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1324
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1325
    const/4 v0, 0x1

    return v0

    .line 1334
    :cond_a
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1346
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1361
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1362
    const/4 v0, 0x1

    return v0

    .line 1364
    :cond_a
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 959
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 378
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getDialogFocus()Z
    .registers 2

    .line 1248
    iget-boolean v0, p0, Landroid/app/Dialog;->mHasFocus:Z

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1725
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;
    .registers 2

    .line 1920
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getSearchEvent()Landroid/view/SearchEvent;
    .registers 2

    .line 1599
    iget-object v0, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .registers 2

    .line 1881
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    .line 925
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 760
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 761
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 763
    :cond_9
    return-void
.end method

.method public invalidateOptionsMenu()V
    .registers 3

    .line 1517
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1518
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 1520
    :cond_e
    return-void
.end method

.method public isShowing()Z
    .registers 3

    .line 418
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    :cond_5
    goto :goto_d

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1641
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_7

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1644
    :cond_7
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 1629
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1630
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 1261
    return-void
.end method

.method public onBackPressed()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1143
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_7

    .line 1144
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 1146
    :cond_7
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .line 1237
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1561
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 847
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1527
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1467
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1411
    if-nez p1, :cond_7

    .line 1412
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1415
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .line 1403
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 1265
    invoke-direct {p0}, Landroid/app/Dialog;->semClearAnchorListener()V

    .line 1266
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1225
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1064
    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_8

    goto :goto_a

    .line 1069
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 1065
    :cond_a
    :goto_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1066
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1111
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1159
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1094
    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_20

    .line 1095
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1096
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1097
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1098
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 1099
    const/4 v0, 0x1

    return v0

    .line 1101
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1434
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    .line 1435
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1437
    :cond_a
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1493
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 1453
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 1454
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1456
    :cond_a
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 1479
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 1423
    const/4 v0, 0x1

    if-nez p1, :cond_12

    .line 1424
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 1426
    :cond_12
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 904
    const-string v0, "android:dialogHierarchy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 905
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_9

    .line 907
    return-void

    .line 909
    :cond_9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 910
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 911
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 912
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 914
    :cond_1c
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 885
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 886
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 887
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_1b

    .line 888
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:dialogHierarchy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 890
    :cond_1b
    return-object v0
.end method

.method public onSearchRequested()Z
    .registers 9

    .line 1577
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 1578
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1581
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v7

    .line 1582
    .local v7, "appName":Landroid/content/ComponentName;
    if-eqz v7, :cond_25

    invoke-virtual {v0, v7}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1583
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1584
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1585
    const/4 v1, 0x1

    return v1

    .line 1587
    :cond_25
    const/4 v1, 0x0

    return v1
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 1568
    iput-object p1, p0, Landroid/app/Dialog;->mSearchEvent:Landroid/view/SearchEvent;

    .line 1569
    invoke-virtual {p0}, Landroid/app/Dialog;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    .line 853
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 854
    :cond_8
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_25

    .line 855
    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 857
    new-instance v0, Landroid/app/Dialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda4;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 858
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    .line 861
    :cond_25
    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 867
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 868
    :cond_8
    iget-object v0, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_15

    .line 869
    invoke-virtual {p0}, Landroid/app/Dialog;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mDefaultBackCallback:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 871
    :cond_15
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1173
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1174
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 1175
    const/4 v0, 0x1

    return v0

    .line 1178
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1196
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1230
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1231
    iget-object v1, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    :cond_9
    return-void
.end method

.method public onWindowDismissed(ZZ)V
    .registers 3
    .param p1, "finishTask"    # Z
    .param p2, "suppressWindowTransition"    # Z

    .line 1271
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1272
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .line 1255
    iput-boolean p1, p0, Landroid/app/Dialog;->mHasFocus:Z

    .line 1257
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 1604
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_d

    iget v1, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    if-nez v1, :cond_d

    .line 1605
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 1607
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 1613
    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1614
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 1616
    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1614
    return-object v1

    .line 1616
    :catchall_a
    move-exception v1

    iput v0, p0, Landroid/app/Dialog;->mActionModeTypeStarting:I

    .line 1617
    throw v1
.end method

.method public openContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1547
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1548
    return-void
.end method

.method public openOptionsMenu()V
    .registers 4

    .line 1499
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1500
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 1502
    :cond_f
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 1533
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1534
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .line 1689
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public final requireViewById(I)Landroid/view/View;
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 979
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "view":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_7

    .line 983
    return-object v0

    .line 981
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this Dialog"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public semSetAnchor(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 702
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 703
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Landroid/app/Dialog;->isSupportAnchor()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetAnchor set x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Dialog"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-direct {p0}, Landroid/app/Dialog;->semGetDialogWidth()I

    move-result v1

    .line 707
    .local v1, "dialogWidth":I
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 708
    const/4 v2, 0x0

    goto :goto_48

    :cond_41
    const v2, 0x10504f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 710
    .local v2, "statusBarHeight":I
    :goto_48
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 711
    .local v3, "l":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 712
    div-int/lit8 v4, v1, 0x2

    sub-int v4, p1, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 713
    sub-int v4, p2, v2

    const v5, 0x10503e4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 714
    iget-object v4, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 716
    .end local v1    # "dialogWidth":I
    .end local v2    # "statusBarHeight":I
    .end local v3    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_69
    return-void
.end method

.method public semSetAnchor(Landroid/view/View;)V
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Dialog;->semSetAnchor(Landroid/view/View;I)V

    .line 556
    return-void
.end method

.method public semSetAnchor(Landroid/view/View;I)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "anchorType"    # I

    .line 569
    invoke-direct {p0}, Landroid/app/Dialog;->isSupportAnchor()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetAnchor anchorView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , anchorType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dialog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iput-object p1, p0, Landroid/app/Dialog;->mAnchorView:Landroid/view/View;

    .line 572
    iput p2, p0, Landroid/app/Dialog;->mAnchorType:I

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mRootView:Landroid/view/View;

    .line 575
    if-eqz v0, :cond_4e

    .line 576
    invoke-direct {p0}, Landroid/app/Dialog;->semClearAnchorListener()V

    .line 577
    iget-object v0, p0, Landroid/app/Dialog;->mRootView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/Dialog;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 578
    new-instance v0, Landroid/app/Dialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/Dialog$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroid/app/Dialog;->mRemoveOnLayoutChangeListnerRunnable:Ljava/lang/Runnable;

    .line 581
    iget-object v0, p0, Landroid/app/Dialog;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/app/Dialog;->isNeedToUpdateAttributes(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Dialog;->mNeedToUpdate:Z

    .line 584
    :cond_4e
    invoke-direct {p0}, Landroid/app/Dialog;->alignToAnchor()V

    .line 586
    :cond_51
    return-void
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1796
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1797
    return-void
.end method

.method public setCancelable(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 1733
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1734
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .registers 3
    .param p1, "cancel"    # Z

    .line 1745
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-nez v0, :cond_9

    .line 1746
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1749
    :cond_9
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1750
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 993
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 994
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1004
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 1005
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1016
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1833
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1834
    return-void
.end method

.method public setDismissOverride(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "override"    # Ljava/lang/Runnable;

    .line 1848
    iput-object p1, p0, Landroid/app/Dialog;->mDismissOverride:Ljava/lang/Runnable;

    .line 1849
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1713
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1714
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .line 1721
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1722
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .line 1697
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1698
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1705
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1706
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 1778
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1783
    if-eqz p1, :cond_11

    .line 1784
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_14

    .line 1786
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1788
    :goto_14
    return-void

    .line 1779
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1804
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1809
    if-eqz p1, :cond_11

    .line 1810
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_14

    .line 1812
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1814
    :goto_14
    return-void

    .line 1805
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .line 1888
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1889
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .line 1821
    if-eqz p1, :cond_d

    .line 1822
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_10

    .line 1824
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1826
    :goto_10
    return-void
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 397
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 399
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 400
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "titleId"    # I

    .line 1047
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1048
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1036
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1038
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 1874
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1875
    return-void
.end method

.method public show()V
    .registers 13

    .line 440
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 441
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 442
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 443
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 445
    :cond_18
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :cond_1d
    return-void

    .line 450
    :cond_1e
    iput-boolean v2, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 452
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_29

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    goto :goto_3c

    .line 457
    :cond_29
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 458
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 461
    .end local v0    # "config":Landroid/content/res/Configuration;
    :goto_3c
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 462
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 464
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_6e

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 465
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 466
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 467
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 468
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    iput-object v1, p0, Landroid/app/Dialog;->mActionBar:Landroid/app/ActionBar;

    .line 471
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6e
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 472
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    .line 473
    .local v1, "restoreSoftInputMode":Z
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_82

    .line 475
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 477
    const/4 v1, 0x1

    .line 481
    :cond_82
    iget-boolean v3, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_103

    .line 483
    const/4 v3, 0x0

    .line 485
    .local v3, "isGlobalAction":Z
    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111026e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_b9

    if-nez v3, :cond_b9

    .line 486
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 487
    iget-boolean v2, p0, Landroid/app/Dialog;->mIsDeviceDefaultDark:Z

    if-eqz v2, :cond_b3

    const v2, 0x3f266666    # 0.65f

    goto :goto_b6

    :cond_b3
    const v2, 0x3e3851ec    # 0.18f

    :goto_b6
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_d3

    .line 490
    :cond_b9
    iget-boolean v5, p0, Landroid/app/Dialog;->mIsDeviceDefaultDark:Z

    if-nez v5, :cond_d3

    .line 491
    iget-object v5, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_reduce_transparency"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_cc

    move v2, v4

    .line 494
    .local v2, "isReduceTransparency":Z
    :cond_cc
    if-eqz v2, :cond_d3

    .line 495
    const v5, 0x3eb33333    # 0.35f

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 500
    .end local v2    # "isReduceTransparency":Z
    :cond_d3
    :goto_d3
    instance-of v2, p0, Landroid/app/ProgressDialog;

    if-eqz v2, :cond_f3

    .line 501
    move-object v2, p0

    check-cast v2, Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getCurrentProgressStyle()I

    move-result v2

    const/16 v5, 0x3e8

    if-ne v2, v5, :cond_f3

    .line 502
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x105055d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 503
    .local v2, "dialogBaseSize":I
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 504
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 508
    .end local v2    # "dialogBaseSize":I
    :cond_f3
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0196

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    .line 512
    .end local v3    # "isGlobalAction":Z
    :cond_103
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    iget-boolean v2, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    if-eqz v2, :cond_110

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 519
    :cond_110
    if-eqz v1, :cond_118

    .line 520
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 526
    :cond_118
    iget-boolean v2, p0, Landroid/app/Dialog;->mIsDeviceDefault:Z

    if-eqz v2, :cond_174

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v2, :cond_174

    .line 527
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 528
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 527
    const v5, 0x1080ba7

    invoke-virtual {v2, v5, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 530
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_174

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_174

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-eqz v3, :cond_174

    .line 531
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    iget-object v5, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    .line 532
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10503c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 534
    .local v3, "bottomInset":I
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v5

    move-object v7, v2

    move v11, v3

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 535
    .local v5, "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    iget-object v6, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 541
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bottomInset":I
    .end local v5    # "insetDrawable":Landroid/graphics/drawable/InsetDrawable;
    :cond_174
    iput-boolean v4, p0, Landroid/app/Dialog;->mShowing:Z

    .line 543
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V

    .line 544
    return-void
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 1854
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1855
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    goto :goto_11

    .line 1856
    :cond_8
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_11

    goto :goto_1b

    .line 1860
    :cond_11
    :goto_11
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1861
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1862
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1864
    const/4 v0, 0x1

    return v0

    .line 1857
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public takeKeyEvents(Z)V
    .registers 3
    .param p1, "get"    # Z

    .line 1674
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1675
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1540
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1541
    return-void
.end method
