.class public Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilitySamsungShortcutChooserActivity.java"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCurrentDisplayId:I

.field private mMenuDialog:Landroid/app/AlertDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShortcutType:I

.field private mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PtoDcB2bYZAOK_bCVnPiYuQlco8(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fcW_3BN3JZZrurqcJWYHteu2sd0(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$j2L_bmRAjCftT6PNrtAptiXFxGI(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->lambda$createMenuDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkOxeUTUL4Qi2AGuyoVr1sVi4KE(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->lambda$updateDialogListeners$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmMenuDialog(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    .line 75
    new-instance v0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createMenuDialog()Landroid/app/AlertDialog;
    .registers 4

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 208
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isUserSetupCompleted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 212
    nop

    .line 213
    const v1, 0x1040480

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "positiveButtonText":Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    .end local v1    # "positiveButtonText":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getGravity()I
    .registers 3

    .line 227
    iget v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    if-nez v0, :cond_1a

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->isDexModeScreen()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 229
    :cond_17
    const/16 v0, 0x55

    return v0

    .line 231
    :cond_1a
    const/16 v0, 0x51

    return v0
.end method

.method private isDexModeScreen()Z
    .registers 6

    .line 237
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "desktopmode"

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 238
    .local v1, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    .line 239
    .local v2, "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    if-eqz v2, :cond_31

    iget v3, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31

    .line 240
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_27

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2f

    .line 241
    :cond_27
    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v3
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2b} :catch_33

    const/16 v4, 0x65

    if-ne v3, v4, :cond_31

    :cond_2f
    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    nop

    .line 239
    :goto_32
    return v0

    .line 242
    .end local v1    # "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    .end local v2    # "state":Lcom/samsung/android/desktopmode/SemDesktopModeState;
    :catch_33
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0
.end method

.method private synthetic lambda$createMenuDialog$2(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 103
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->updateDialogListeners()V

    return-void
.end method

.method private synthetic lambda$updateDialogListeners$1(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 185
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->onEditShortcutClicked()V

    return-void
.end method

.method private onEditShortcutClicked()V
    .registers 5

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    const-string v2, "com.android.settings"

    if-nez v1, :cond_11

    .line 192
    const-string v1, "com.android.settings.Settings$AccessibilityButtonPreferenceActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22

    .line 193
    :cond_11
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    .line 194
    const-string v1, "com.android.settings.Settings$VolumeUpAndDownPreferenceActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22

    .line 195
    :cond_1a
    const/4 v3, 0x2

    if-ne v1, v3, :cond_22

    .line 196
    const-string v1, "com.android.settings.Settings$SideAndVolumeUpPreferenceActivity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    :cond_22
    :goto_22
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    :try_start_28
    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2e} :catch_2f

    .line 203
    goto :goto_30

    .line 202
    :catch_2f
    move-exception v1

    .line 204
    :goto_30
    return-void
.end method

.method private onTargetSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 160
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 161
    .local v0, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    const-string v1, "accessibility_button_target_component"

    .line 162
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "targetName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "targetLabel":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 165
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 166
    invoke-static {p0, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForEmergencyMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 167
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 168
    return-void

    .line 170
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->isDexModeScreen()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 171
    invoke-static {p0, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForDexMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 172
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 173
    return-void

    .line 176
    :cond_42
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_button_target_component"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_56

    .line 178
    iget v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    iget v6, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/view/accessibility/AccessibilityManager;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V

    .line 180
    :cond_56
    invoke-virtual {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getShortcutType()I

    move-result v4

    invoke-static {p0, v4, v2}, Landroid/view/accessibility/A11yLogger;->insertShortcutSaLog(Landroid/content/Context;ILjava/lang/String;)V

    .line 181
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 182
    return-void
.end method

.method private updateDialogListeners()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 126
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 127
    .local v1, "attr":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 130
    .end local v0    # "w":Landroid/view/Window;
    .end local v1    # "attr":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "theme":Landroid/content/res/TypedArray;
    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 91
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->requestWindowFeature(I)Z

    .line 93
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3c

    .line 98
    const-string/jumbo v2, "shortcutType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    .line 100
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mShortcutType:I

    invoke-static {p0, v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    new-instance v2, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    iget-object v3, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mTargetAdapter:Lcom/android/internal/accessibility/dialog/ShortcutTargetAdapter;

    .line 102
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->createMenuDialog()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    .line 103
    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 104
    iget-object v2, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 105
    .local v2, "w":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 106
    .local v3, "attr":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7d9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 107
    invoke-direct {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getGravity()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 108
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 111
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    iput v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    .line 118
    :cond_99
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 119
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mMenuDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "tempDisplayId":I
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 152
    :cond_12
    iget v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    if-eq v1, v0, :cond_1c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 153
    iput v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->mCurrentDisplayId:I

    goto :goto_1f

    .line 155
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->finish()V

    .line 157
    :goto_1f
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilitySamsungShortcutChooserActivity;->overridePendingTransition(II)V

    .line 136
    return-void
.end method
