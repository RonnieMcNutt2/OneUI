.class public Lcom/android/internal/policy/PhoneFallbackEventHandler;
.super Ljava/lang/Object;
.source "PhoneFallbackEventHandler.java"

# interfaces
.implements Landroid/view/FallbackEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneFallbackEventHandler$PressType;,
        Lcom/android/internal/policy/PhoneFallbackEventHandler$UndefinedSettingNames;
    }
.end annotation


# static fields
.field private static final AFTER_KEYGUARD_GONE:Ljava/lang/String; = "afterKeyguardGone"

.field private static final CLASS_NAME_MESSAGING:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final COMPONENT_NAME_CAMERA:Ljava/lang/String; = "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

.field private static final DEBUG:Z = false

.field private static final EXTRA_IS_QUICK_LAUNCH_MODE:Ljava/lang/String; = "isQuickLaunchMode"

.field private static final EXTRA_IS_SECURE:Ljava/lang/String; = "isSecure"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field private static final PACKAGE_NAME_MESSAGING:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final RESERVE_BATTERY_MODE_KEY_TOAST:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mPressType:I

.field mSearchManager:Landroid/app/SearchManager;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 74
    const-string v0, "PhoneFallbackEventHandler"

    sput-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 591
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    .line 90
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private getApplicationInfo(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 702
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 703
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_13

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_13

    .line 704
    return-object v3

    .line 707
    :cond_13
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Can not start activity because app is not added in reserveBatteryMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :try_start_1a
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v1

    .line 710
    :catch_1f
    move-exception v1

    .line 711
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed getApplicationInfo, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method private getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 696
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEventId(II)Ljava/lang/String;
    .registers 4
    .param p1, "press"    # I
    .param p2, "keyCode"    # I

    .line 771
    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_1c

    goto :goto_19

    .line 781
    :sswitch_5
    if-nez p1, :cond_a

    .line 782
    const-string v0, "HWB1107"

    return-object v0

    .line 783
    :cond_a
    if-ne p1, v0, :cond_19

    .line 784
    const-string v0, "HWB1112"

    return-object v0

    .line 773
    :sswitch_f
    if-nez p1, :cond_14

    .line 774
    const-string v0, "HWB1101"

    return-object v0

    .line 775
    :cond_14
    if-ne p1, v0, :cond_19

    .line 776
    const-string v0, "HWB1106"

    return-object v0

    .line 791
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x3f7 -> :sswitch_f
        0x437 -> :sswitch_5
    .end sparse-switch
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_11

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 552
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getToastString(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;
    .registers 5
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "resId"    # I

    .line 689
    if-nez p1, :cond_4

    .line 690
    const/4 v0, 0x0

    return-object v0

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V

    .line 501
    return-void
.end method

.method private handleVolumeKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V

    .line 497
    return-void
.end method

.method private isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z
    .registers 3
    .param p1, "dispatcher"    # Landroid/view/KeyEvent$DispatcherState;

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_18

    if-nez p1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 342
    :goto_1b
    return v0
.end method

.method private isReserveBatteryMode()Z
    .registers 7

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_DOWNLOADABLE_RESERVE_BATTERY_MODE:Z

    const-string v2, "enable_reserve_max_mode"

    const-string/jumbo v3, "reserve_battery_on"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_20

    .line 514
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1e

    .line 516
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1e

    goto :goto_1f

    :cond_1e
    move v4, v5

    .line 514
    :goto_1f
    return v4

    .line 518
    :cond_20
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v1, :cond_33

    .line 519
    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_31

    .line 521
    invoke-static {v0, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_31

    goto :goto_32

    :cond_31
    move v4, v5

    .line 519
    :goto_32
    return v4

    .line 524
    :cond_33
    return v5
.end method

.method private isUserSetupComplete()Z
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    :cond_11
    return v2
.end method

.method private isXCoverKeyOnLockScreen(I)Z
    .registers 6
    .param p1, "keyCode"    # I

    .line 737
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 738
    const/16 v1, 0x437

    if-ne p1, v1, :cond_e

    .line 739
    const-string/jumbo v1, "xcover_top_key_on_lockscreen"

    goto :goto_10

    .line 740
    :cond_e
    const-string v1, "active_key_on_lockscreen"

    :goto_10
    nop

    .line 737
    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    move v2, v1

    :cond_1b
    return v2
.end method

.method private launchCamera()V
    .registers 6

    .line 556
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 558
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    const-string/jumbo v2, "isSecure"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    const-string/jumbo v1, "isQuickLaunchMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 561
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 564
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 567
    :try_start_3e
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 568
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 567
    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->requestWaitingForOccluding(I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_4b} :catch_4c

    goto :goto_65

    .line 569
    :catch_4c
    move-exception v1

    .line 570
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not requestWaitingForOccluding, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_65
    goto :goto_6b

    .line 574
    :cond_66
    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 578
    :goto_6b
    :try_start_6b
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6b .. :try_end_70} :catch_71

    .line 581
    goto :goto_79

    .line 579
    :catch_71
    move-exception v1

    .line 580
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity to launch Camera."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 583
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_79
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 584
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_82

    .line 585
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 587
    :cond_82
    return-void
.end method

.method private launchUserDefinedApp(II)Z
    .registers 9
    .param p1, "pressType"    # I
    .param p2, "keyCode"    # I

    .line 603
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xcover key press type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/4 v0, 0x0

    .line 607
    .local v0, "info":Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    const/4 v1, 0x0

    :try_start_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 608
    .local v2, "windowManager":Landroid/view/IWindowManager;
    packed-switch p1, :pswitch_data_dc

    .line 618
    return v1

    .line 614
    :pswitch_23
    const/4 v3, 0x4

    invoke-interface {v2, v3, p2}, Landroid/view/IWindowManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3

    move-object v0, v3

    .line 615
    goto :goto_31

    .line 610
    :pswitch_2a
    const/4 v3, 0x3

    invoke-interface {v2, v3, p2}, Landroid/view/IWindowManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v3
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2f} :catch_32

    move-object v0, v3

    .line 611
    nop

    .line 622
    .end local v2    # "windowManager":Landroid/view/IWindowManager;
    :goto_31
    goto :goto_4b

    .line 620
    :catch_32
    move-exception v2

    .line 621
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not read keyCustomizeEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4b
    if-eqz v0, :cond_d3

    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_53

    goto/16 :goto_d3

    .line 628
    :cond_53
    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_61

    .line 629
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "xcover/top key action of info is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return v1

    .line 633
    :cond_61
    iget-object v2, v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 634
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_72

    .line 635
    sget-object v3, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "xcover/top key componentName is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return v1

    .line 639
    :cond_72
    const-string v1, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isXCoverKeyOnLockScreen(I)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 641
    :cond_8e
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCamera()V

    .line 644
    :cond_91
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_KEY_SA_LOGGING:Z

    if-eqz v1, :cond_9a

    .line 645
    const-string v1, "Camera"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendSaLogging(IILjava/lang/String;)V

    .line 647
    :cond_9a
    return v3

    .line 650
    :cond_9b
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 651
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 652
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_RESERVE_BATTERY_MODE:Z

    if-eqz v4, :cond_ba

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isReserveBatteryMode()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 653
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->showToastIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 655
    return v3

    .line 658
    :cond_ba
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const/high16 v4, 0x10200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 660
    invoke-direct {p0, v1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startActivityForXCoverTopKey(Landroid/content/Intent;I)V

    .line 662
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_KEY_SA_LOGGING:Z

    if-eqz v4, :cond_d2

    .line 663
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->sendSaLogging(IILjava/lang/String;)V

    .line 665
    :cond_d2
    return v3

    .line 625
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_d3
    :goto_d3
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "xcover/top key info is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v1

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_23
    .end packed-switch
.end method

.method private sendSaLogging(IILjava/lang/String;)V
    .registers 7
    .param p1, "pressType"    # I
    .param p2, "keyCode"    # I
    .param p3, "detail"    # Ljava/lang/String;

    .line 760
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getEventId(II)Ljava/lang/String;

    move-result-object v0

    .line 761
    .local v0, "eventId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 762
    return-void

    .line 764
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 765
    .local v1, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "det"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-static {v0, v1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 767
    return-void
.end method

.method private showToastIfNeeded(Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "keyToastMode"    # I

    .line 669
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_32

    if-nez p1, :cond_a

    goto :goto_32

    .line 674
    :cond_a
    const/4 v0, 0x0

    .line 675
    .local v0, "toastString":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_19

    .line 676
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getApplicationInfo(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    const v4, 0x1040bc7

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getToastString(Landroid/content/pm/ApplicationInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 679
    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 680
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 682
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 683
    return v2

    .line 685
    :cond_31
    return v1

    .line 670
    .end local v0    # "toastString":Ljava/lang/String;
    :cond_32
    :goto_32
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageName or intent is empty. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return v1
.end method

.method private startActivityForXCoverTopKey(Landroid/content/Intent;I)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "keyCode"    # I

    .line 717
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivityForXCoverTopKey keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 719
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isXCoverKeyOnLockScreen(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 721
    .local v0, "fillInIntent":Landroid/content/Intent;
    const-string v1, "afterKeyguardGone"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    iget-object v3, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0xc000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 725
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 726
    .end local v0    # "fillInIntent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_59

    .line 729
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_50
    .catch Landroid/content/ActivityNotFoundException; {:try_start_49 .. :try_end_50} :catch_51

    .line 732
    goto :goto_59

    .line 730
    :catch_51
    move-exception v0

    .line 731
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v2, "No activity to launch on XCover Key."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_59
    :goto_59
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 103
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 104
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 106
    .local v1, "keyCode":I
    if-nez v0, :cond_f

    .line 107
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 109
    :cond_f
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 483
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 476
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getMediaSessionManager()Landroid/media/session/MediaSessionManager;
    .registers 3

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_11

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 489
    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 491
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method getSearchManager()Landroid/app/SearchManager;
    .registers 3

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_11

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    .line 461
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 469
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method isFactoryMode()Z
    .registers 3

    .line 747
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    .line 748
    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 749
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    .line 754
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 750
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "Block launchUserDefinedApp because of Factory binary, test mode or Factory app."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 21
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 119
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 121
    .local v4, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    const/high16 v0, 0x800000

    const-string v5, "android.intent.action.MAIN"

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_254

    goto/16 :goto_252

    .line 308
    :sswitch_19
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v0, :cond_252

    .line 309
    :cond_21
    if-eqz v4, :cond_252

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_252

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_31

    .line 310
    goto/16 :goto_252

    .line 313
    :cond_31
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 314
    .local v0, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    .line 315
    .local v5, "longPress":Z
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v6

    .line 317
    .local v6, "isTracking":Z
    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v9, :cond_78

    .line 318
    sget-object v9, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onKeyDown, keycode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " repeatCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isLongPress="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isTracking="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_78
    if-nez v0, :cond_80

    .line 323
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 324
    iput v7, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    goto :goto_8f

    .line 325
    :cond_80
    if-eqz v5, :cond_8f

    if-eqz v6, :cond_8f

    .line 326
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 327
    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v9, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 328
    invoke-direct {v1, v8, v2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(II)Z

    .line 332
    :cond_8f
    :goto_8f
    return v8

    .line 254
    .end local v0    # "repeatCount":I
    .end local v5    # "longPress":Z
    .end local v6    # "isTracking":Z
    :sswitch_90
    if-eqz v4, :cond_252

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-gtz v5, :cond_252

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 256
    goto/16 :goto_252

    .line 259
    :cond_a4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 260
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.messaging"

    const-string v9, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    :try_start_b6
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_bb
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b6 .. :try_end_bb} :catch_bc

    .line 267
    goto :goto_c4

    .line 265
    :catch_bc
    move-exception v0

    .line 266
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "No activity to launch mms ConversationComposer."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_c4
    return v8

    .line 233
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_c5
    if-eqz v4, :cond_252

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    if-gtz v9, :cond_252

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_d9

    .line 235
    goto/16 :goto_252

    .line 238
    :cond_d9
    const-string v7, "android.intent.category.APP_EMAIL"

    invoke-static {v5, v7}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 240
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    :try_start_e5
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_ea
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e5 .. :try_end_ea} :catch_eb

    .line 246
    goto :goto_f3

    .line 244
    :catch_eb
    move-exception v0

    .line 245
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "No activity to launch email"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_f3
    return v8

    .line 296
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_f4
    if-eqz v4, :cond_252

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_252

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_108

    .line 298
    goto/16 :goto_252

    .line 300
    :cond_108
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, v7, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 301
    return v8

    .line 275
    :sswitch_110
    if-eqz v4, :cond_252

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_252

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_124

    .line 277
    goto/16 :goto_252

    .line 280
    :cond_124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 281
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v0, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v6, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :try_start_13a
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13a .. :try_end_13f} :catch_140

    .line 288
    goto :goto_148

    .line 286
    :catch_140
    move-exception v0

    .line 287
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v7, "No activity to launch launcher app list. "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_148
    return v8

    .line 196
    .end local v5    # "intent":Landroid/content/Intent;
    :sswitch_149
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_151

    .line 197
    goto/16 :goto_252

    .line 199
    :cond_151
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_15c

    .line 200
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto/16 :goto_252

    .line 201
    :cond_15c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_252

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_252

    .line 202
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 203
    .local v5, "config":Landroid/content/res/Configuration;
    iget v0, v5, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v8, :cond_17b

    iget v0, v5, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_1aa

    .line 205
    :cond_17b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 208
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    :try_start_18c
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 212
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V
    :try_end_1a0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_18c .. :try_end_1a0} :catch_1a1

    .line 217
    return v8

    .line 218
    :catch_1a1
    move-exception v0

    .line 221
    .end local v9    # "intent":Landroid/content/Intent;
    goto :goto_1aa

    .line 222
    :cond_1a3
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v6, "Not dispatching SEARCH long press because user setup is in progress."

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v5    # "config":Landroid/content/res/Configuration;
    :cond_1aa
    :goto_1aa
    goto/16 :goto_252

    .line 141
    :sswitch_1ac
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 142
    return v8

    .line 172
    :sswitch_1b0
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 173
    goto/16 :goto_252

    .line 175
    :cond_1b8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1c2

    .line 176
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_204

    .line 177
    :cond_1c2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_204

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 178
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 180
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.CAMERA_BUTTON"

    const/4 v7, 0x0

    invoke-direct {v0, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    iget-object v9, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-virtual/range {v9 .. v17}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_204

    .line 188
    :cond_1fd
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not dispatching CAMERA long press because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_204
    :goto_204
    return v8

    .line 125
    :sswitch_205
    invoke-direct {v1, v3}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 126
    return v8

    .line 146
    :sswitch_209
    invoke-direct {v1, v4}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 147
    goto :goto_252

    .line 149
    :cond_210
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_21a

    .line 150
    invoke-virtual {v4, v3, v1}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_251

    .line 151
    :cond_21a
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_251

    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_251

    .line 152
    invoke-virtual {v4, v3}, Landroid/view/KeyEvent$DispatcherState;->performedLongPress(Landroid/view/KeyEvent;)V

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 154
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 157
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 159
    :try_start_23f
    iget-object v0, v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_244
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23f .. :try_end_244} :catch_245

    .line 162
    goto :goto_249

    .line 160
    :catch_245
    move-exception v0

    .line 161
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    .line 163
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_249
    goto :goto_251

    .line 164
    :cond_24a
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v5, "Not starting call activity because user setup is in progress."

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_251
    :goto_251
    return v8

    .line 338
    :cond_252
    :goto_252
    return v7

    nop

    :sswitch_data_254
    .sparse-switch
        0x5 -> :sswitch_209
        0x18 -> :sswitch_205
        0x19 -> :sswitch_205
        0x1b -> :sswitch_1b0
        0x4f -> :sswitch_1ac
        0x54 -> :sswitch_149
        0x55 -> :sswitch_1ac
        0x56 -> :sswitch_1ac
        0x57 -> :sswitch_1ac
        0x58 -> :sswitch_1ac
        0x59 -> :sswitch_1ac
        0x5a -> :sswitch_1ac
        0x7e -> :sswitch_1ac
        0x7f -> :sswitch_1ac
        0x82 -> :sswitch_1ac
        0xa4 -> :sswitch_205
        0xde -> :sswitch_1ac
        0x3ea -> :sswitch_110
        0x3ee -> :sswitch_f4
        0x3f0 -> :sswitch_c5
        0x3f5 -> :sswitch_90
        0x3f7 -> :sswitch_19
        0x437 -> :sswitch_19
    .end sparse-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 348
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1d

    .line 351
    sget-object v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 354
    .local v0, "dispatcher":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_28

    .line 355
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 358
    :cond_28
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_e8

    goto/16 :goto_e6

    .line 422
    :sswitch_2e
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-nez v2, :cond_36

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v2, :cond_8d

    .line 423
    :cond_36
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isFactoryMode()Z

    move-result v2

    if-nez v2, :cond_e6

    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_44

    .line 424
    goto/16 :goto_e6

    .line 427
    :cond_44
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_7b

    .line 428
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyUp, keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " press="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " event.isCanceled()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 429
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_7b
    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    if-nez v2, :cond_8d

    .line 432
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_8a

    iget v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    .line 433
    invoke-direct {p0, v2, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchUserDefinedApp(II)Z

    .line 436
    :cond_8a
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mPressType:I

    .line 439
    :cond_8d
    return v1

    .line 379
    :sswitch_8e
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 380
    return v1

    .line 384
    :sswitch_92
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 385
    goto :goto_e6

    .line 387
    :cond_99
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 391
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->launchCamera()V

    goto :goto_b6

    .line 395
    :cond_af
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting camera activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_b6
    :goto_b6
    return v1

    .line 362
    :sswitch_b7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 363
    invoke-direct {p0, p2}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->handleVolumeKeyEvent(Landroid/view/KeyEvent;)V

    .line 365
    :cond_c0
    return v1

    .line 405
    :sswitch_c1
    invoke-direct {p0, v0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isNotInstantAppAndKeyguardRestricted(Landroid/view/KeyEvent$DispatcherState;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 406
    goto :goto_e6

    .line 408
    :cond_c8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_e5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_e5

    .line 409
    invoke-direct {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->isUserSetupComplete()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->startCallActivity()V

    goto :goto_e5

    .line 412
    :cond_de
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "Not starting call activity because user setup is in progress."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_e5
    :goto_e5
    return v1

    .line 443
    :cond_e6
    :goto_e6
    const/4 v1, 0x0

    return v1

    :sswitch_data_e8
    .sparse-switch
        0x5 -> :sswitch_c1
        0x18 -> :sswitch_b7
        0x19 -> :sswitch_b7
        0x1b -> :sswitch_92
        0x4f -> :sswitch_8e
        0x55 -> :sswitch_8e
        0x56 -> :sswitch_8e
        0x57 -> :sswitch_8e
        0x58 -> :sswitch_8e
        0x59 -> :sswitch_8e
        0x5a -> :sswitch_8e
        0x7e -> :sswitch_8e
        0x7f -> :sswitch_8e
        0x82 -> :sswitch_8e
        0xa4 -> :sswitch_b7
        0xde -> :sswitch_8e
        0x3f7 -> :sswitch_2e
        0x437 -> :sswitch_2e
    .end sparse-switch
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/policy/PhoneFallbackEventHandler;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;I)V

    .line 99
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 94
    iput-object p1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mView:Landroid/view/View;

    .line 95
    return-void
.end method

.method startCallActivity()V
    .registers 5

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 451
    :try_start_c
    iget-object v1, p0, Lcom/android/internal/policy/PhoneFallbackEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_11} :catch_12

    .line 454
    goto :goto_1a

    .line 452
    :catch_12
    move-exception v1

    .line 453
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/internal/policy/PhoneFallbackEventHandler;->TAG:Ljava/lang/String;

    const-string v3, "No activity found for android.intent.action.CALL_BUTTON."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1a
    return-void
.end method
