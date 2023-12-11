.class public Lcom/android/internal/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AlertController$ButtonHandler;,
        Lcom/android/internal/app/AlertController$AlertParams;,
        Lcom/android/internal/app/AlertController$RecycleListView;,
        Lcom/android/internal/app/AlertController$CheckedItemAdapter;
    }
.end annotation


# static fields
.field public static final MICRO:I = 0x1

.field private static sHasPaddingBottomInCustom:Z


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsItemChoiceLayout:Z

.field private mLastOrientation:I

.field private mListItemLayout:I

.field private mListLayout:I

.field protected mListView:Landroid/widget/ListView;

.field protected mMessage:Ljava/lang/CharSequence;

.field private mMessageHyphenationFrequency:Ljava/lang/Integer;

.field private mMessageMovementMethod:Landroid/text/method/MovementMethod;

.field protected mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field protected mScrollView:Landroid/widget/ScrollView;

.field private mShowTitle:Z

.field private mSingleChoiceItemLayout:I

.field private final mThemeIsDeviceDefault:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field protected final mWindow:Landroid/view/Window;


# direct methods
.method public static synthetic $r8$lambda$SdKBlIFqY4Hj6MvbnhBknYHKSWw(Lcom/android/internal/app/AlertController;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hMv-6Rz_rUrprm5NSzUFVJmBRCk(Lcom/android/internal/app/AlertController;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/android/internal/app/AlertController;->lambda$setupView$1(Landroid/view/View;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$pxamCoSqKRozpCHp6KAJXdA4jBs(Lcom/android/internal/app/AlertController;ILandroid/widget/Button;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/AlertController;->lambda$semSetupButtonsPadding$2(ILandroid/widget/Button;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNegative(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNegativeMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNeutral(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonNeutralMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPositive(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmButtonPositiveMessage(Lcom/android/internal/app/AlertController;)Landroid/os/Message;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListItemLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSingleChoiceItemLayout(Lcom/android/internal/app/AlertController;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThemeIsDeviceDefault(Lcom/android/internal/app/AlertController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAdapter(Lcom/android/internal/app/AlertController;Landroid/widget/ListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCheckedItem(Lcom/android/internal/app/AlertController;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsItemChoiceLayout(Lcom/android/internal/app/AlertController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsHasPaddingBottomInCustom()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 109
    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 137
    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 144
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    .line 148
    new-instance v1, Lcom/android/internal/app/AlertController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AlertController$1;-><init>(Lcom/android/internal/app/AlertController;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 221
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 223
    iput-object p3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    .line 224
    new-instance v1, Lcom/android/internal/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/android/internal/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 228
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200d7

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 229
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_39

    move v2, v4

    goto :goto_3a

    :cond_39
    move v2, v0

    :goto_3a
    iput-boolean v2, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    .line 233
    sget-object v2, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v3, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 236
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0xa

    const v5, 0x1090030

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    .line 238
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    .line 240
    const/16 v0, 0xf

    const v3, 0x1090134

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListLayout:I

    .line 243
    const/16 v0, 0x10

    const v3, 0x1090013

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mMultiChoiceItemLayout:I

    .line 246
    const/16 v0, 0x15

    const v3, 0x1090012

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mSingleChoiceItemLayout:I

    .line 249
    const/16 v0, 0xe

    const v3, 0x1090011

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mListItemLayout:I

    .line 252
    const/16 v0, 0x14

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    .line 254
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    invoke-virtual {p3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 258
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6
    .param p0, "v"    # Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 262
    return v1

    .line 265
    :cond_8
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 266
    return v2

    .line 269
    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 271
    .local v3, "i":I
    :cond_15
    if-lez v3, :cond_24

    .line 272
    add-int/lit8 v3, v3, -0x1

    .line 273
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 274
    invoke-static {p0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 275
    return v1

    .line 279
    :cond_24
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 7
    .param p1, "button"    # Landroid/widget/Button;

    .line 983
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 984
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 985
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 986
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x10203b2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 988
    .local v1, "leftSpacer":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 989
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 991
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x10204f7

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 992
    .local v3, "rightSpacer":Landroid/view/View;
    if-eqz v3, :cond_2d

    .line 993
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 995
    :cond_2d
    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .line 205
    sget-object v0, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v1, 0x101005d

    const v2, 0x1030223

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 209
    .local v1, "controllerType":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    packed-switch v1, :pswitch_data_26

    .line 215
    new-instance v2, Lcom/android/internal/app/AlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    .line 213
    :pswitch_20
    new-instance v2, Lcom/android/internal/app/MicroAlertController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/app/MicroAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v2

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method private synthetic lambda$semSetupButtonsPadding$2(ILandroid/widget/Button;)V
    .registers 5
    .param p1, "btnTextSize"    # I
    .param p2, "btn"    # Landroid/widget/Button;

    .line 1208
    invoke-virtual {p2}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    .line 1209
    const/4 v0, 0x0

    int-to-float v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1210
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 1212
    :cond_10
    return-void
.end method

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .registers 4
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 558
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    if-eq v0, v1, :cond_16

    .line 560
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->semSetupPaddings()V

    .line 561
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 563
    :cond_16
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/app/AlertController;->mLastOrientation:I

    .line 564
    return-void
.end method

.method private synthetic lambda$setupView$1(Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .registers 12
    .param p1, "parentPanel"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "oldLeft"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldRight"    # I
    .param p10, "oldBottom"    # I

    .line 556
    new-instance v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .line 853
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_11

    .line 854
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    goto :goto_e

    :cond_d
    move v2, v1

    :goto_e
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 856
    :cond_11
    if-eqz p2, :cond_1f

    .line 857
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 859
    :cond_1f
    return-void
.end method

.method private requestFocusForContent(Landroid/view/View;)Z
    .registers 5
    .param p1, "content"    # Landroid/view/View;

    .line 710
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 711
    return v0

    .line 714
    :cond_a
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 715
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 716
    return v0

    .line 719
    :cond_13
    return v2
.end method

.method private requestFocusForDefaultButton()V
    .registers 2

    .line 723
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 724
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_29

    .line 725
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    .line 726
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_29

    .line 727
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 728
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 730
    :cond_29
    :goto_29
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .param p1, "customPanel"    # Landroid/view/View;
    .param p2, "defaultPanel"    # Landroid/view/View;

    .line 526
    if-nez p1, :cond_11

    .line 528
    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_d

    .line 529
    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 532
    :cond_d
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 536
    :cond_11
    if-eqz p2, :cond_21

    .line 537
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 538
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_21

    .line 539
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 544
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_21
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_2c

    .line 545
    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 548
    :cond_2c
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private selectContentView()I
    .registers 4

    .line 295
    iget v0, p0, Lcom/android/internal/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    .line 296
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 298
    :cond_7
    iget v1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 299
    return v0

    .line 302
    :cond_d
    iget v0, p0, Lcom/android/internal/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private semAdjustContentPanelPadding(Landroid/view/View;)V
    .registers 6
    .param p1, "contentPanel"    # Landroid/view/View;

    .line 1197
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10504aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1199
    .local v0, "topPadding":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    .line 1200
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 1199
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1201
    return-void
.end method

.method private semAdjustParentPanelPadding(Landroid/view/View;)V
    .registers 3
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 1185
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 1186
    return-void
.end method

.method private semAdjustTopPanelPadding(Landroid/view/View;)V
    .registers 6
    .param p1, "parentPanel"    # Landroid/view/View;

    .line 1189
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1190
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10503dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1192
    .local v1, "paddingHorizontal":I
    const v2, 0x1020647

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1193
    .local v2, "titleTemplate":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1194
    return-void
.end method

.method private semCheckMaxFontScale(Landroid/widget/TextView;I)V
    .registers 8
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "baseSize"    # I

    .line 1216
    const v0, 0x3fa66666    # 1.3f

    .line 1217
    .local v0, "maxScale":F
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 1219
    .local v1, "currentFontScale":F
    iget-boolean v2, p0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v2, :cond_21

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_21

    .line 1220
    int-to-float v3, p2

    div-float/2addr v3, v1

    .line 1221
    .local v3, "scaleBase":F
    const/4 v4, 0x0

    mul-float/2addr v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1223
    .end local v3    # "scaleBase":F
    :cond_21
    return-void
.end method

.method private semSetupButtonsPadding()V
    .registers 5

    .line 1204
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1206
    .local v0, "btnTextSize":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    filled-new-array {v1, v2, v3}, [Landroid/widget/Button;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/AlertController;I)V

    .line 1207
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1213
    return-void
.end method

.method private semSetupPaddings()V
    .registers 17

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020486

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1128
    .local v1, "mParentPanel":Landroid/view/View;
    const v2, 0x1020647

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1129
    .local v2, "mTitleTemplate":Landroid/view/View;
    const v3, 0x102050f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1130
    .local v3, "mScrollview":Landroid/view/View;
    const v4, 0x102053b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1131
    .local v4, "mButtonPanel":Landroid/view/View;
    const v5, 0x1020275

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1132
    .local v5, "defaultContentPanel":Landroid/view/View;
    iget-object v6, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1134
    .local v6, "resources":Landroid/content/res/Resources;
    const v7, 0x102029f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1135
    .local v7, "customPanel":Landroid/view/ViewGroup;
    const v8, 0x1020654

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1137
    .local v8, "mTopPanel":Landroid/view/View;
    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v7, :cond_4b

    .line 1138
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_4b

    move v12, v9

    goto :goto_4c

    :cond_4b
    move v12, v11

    .line 1139
    .local v12, "hasCustomPanel":Z
    :goto_4c
    if-eqz v8, :cond_56

    .line 1140
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_56

    move v13, v9

    goto :goto_57

    :cond_56
    move v13, v11

    .line 1141
    .local v13, "hasTopPanel":Z
    :goto_57
    if-eqz v5, :cond_61

    .line 1142
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_61

    move v14, v9

    goto :goto_62

    :cond_61
    move v14, v11

    .line 1143
    .local v14, "hasDefaultContentPanel":Z
    :goto_62
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v15, :cond_6d

    .line 1144
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v10, :cond_6d

    goto :goto_6e

    :cond_6d
    move v9, v11

    .line 1146
    .local v9, "hasCustomTitleView":Z
    :goto_6e
    if-eqz v12, :cond_74

    if-nez v13, :cond_74

    if-eqz v14, :cond_76

    :cond_74
    if-eqz v9, :cond_7a

    .line 1147
    :cond_76
    invoke-virtual {v1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_85

    .line 1152
    :cond_7a
    nop

    .line 1153
    const v10, 0x10503e0

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1152
    invoke-virtual {v1, v11, v10, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1157
    :goto_85
    if-eqz v2, :cond_af

    .line 1158
    const v10, 0x10503dd

    if-eqz v12, :cond_9c

    if-eqz v13, :cond_9c

    if-nez v14, :cond_9c

    .line 1159
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1161
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1159
    invoke-virtual {v2, v15, v11, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_af

    .line 1164
    :cond_9c
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1166
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1167
    const v11, 0x10503df

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1164
    const/4 v0, 0x0

    invoke-virtual {v2, v15, v0, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1170
    :cond_af
    :goto_af
    if-eqz v3, :cond_ca

    .line 1171
    const v0, 0x10503cf

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1173
    const v10, 0x10503ce

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1174
    const v11, 0x10503ca

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1171
    const/4 v15, 0x0

    invoke-virtual {v3, v0, v15, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1176
    :cond_ca
    if-eqz v4, :cond_e2

    .line 1177
    const v0, 0x10503d3

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1179
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1180
    const v11, 0x10503d2

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 1177
    const/4 v15, 0x0

    invoke-virtual {v4, v10, v15, v0, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1182
    :cond_e2
    return-void
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .registers 31
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .line 999
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1000
    .local v2, "fullDark":I
    const/4 v3, 0x0

    .line 1001
    .local v3, "topDark":I
    const/4 v4, 0x0

    .line 1002
    .local v4, "centerDark":I
    const/4 v5, 0x0

    .line 1003
    .local v5, "bottomDark":I
    const/4 v6, 0x0

    .line 1004
    .local v6, "fullBright":I
    const/4 v7, 0x0

    .line 1005
    .local v7, "topBright":I
    const/4 v8, 0x0

    .line 1006
    .local v8, "centerBright":I
    const/4 v9, 0x0

    .line 1007
    .local v9, "bottomBright":I
    const/4 v10, 0x0

    .line 1011
    .local v10, "bottomMedium":I
    const/16 v11, 0x11

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1013
    .local v11, "needsDefaultBackgrounds":Z
    if-eqz v11, :cond_31

    .line 1014
    const v2, 0x10807e9

    .line 1015
    const v3, 0x10807f8

    .line 1016
    const v4, 0x10807e6

    .line 1017
    const v5, 0x10807e3

    .line 1018
    const v6, 0x10807e8

    .line 1019
    const v7, 0x10807f7

    .line 1020
    const v8, 0x10807e5

    .line 1021
    const v9, 0x10807e2

    .line 1022
    const v10, 0x10807e4

    .line 1025
    :cond_31
    const/4 v13, 0x5

    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1026
    invoke-virtual {v1, v12, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1027
    const/4 v13, 0x6

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1028
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1038
    const/4 v13, 0x4

    new-array v14, v13, [Landroid/view/View;

    .line 1039
    .local v14, "views":[Landroid/view/View;
    new-array v15, v13, [Z

    .line 1040
    .local v15, "light":[Z
    const/16 v16, 0x0

    .line 1041
    .local v16, "lastView":Landroid/view/View;
    const/16 v17, 0x0

    .line 1043
    .local v17, "lastLight":Z
    const/16 v18, 0x0

    .line 1044
    .local v18, "pos":I
    const/4 v13, 0x0

    if-eqz p6, :cond_58

    .line 1045
    aput-object p2, v14, v18

    .line 1046
    aput-boolean v13, v15, v18

    .line 1047
    add-int/lit8 v18, v18, 0x1

    .line 1055
    :cond_58
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v12, 0x8

    if-ne v13, v12, :cond_62

    const/4 v13, 0x0

    goto :goto_64

    :cond_62
    move-object/from16 v13, p3

    :goto_64
    aput-object v13, v14, v18

    .line 1056
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v13, :cond_6c

    const/4 v13, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v13, 0x0

    :goto_6d
    aput-boolean v13, v15, v18

    .line 1057
    const/4 v13, 0x1

    add-int/lit8 v18, v18, 0x1

    .line 1059
    if-eqz p7, :cond_7c

    .line 1060
    aput-object p4, v14, v18

    .line 1061
    iget-boolean v13, v0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v13, v15, v18

    .line 1062
    add-int/lit8 v18, v18, 0x1

    .line 1065
    :cond_7c
    if-eqz p8, :cond_83

    .line 1066
    aput-object p5, v14, v18

    .line 1067
    const/4 v13, 0x1

    aput-boolean v13, v15, v18

    .line 1070
    :cond_83
    const/4 v13, 0x0

    .line 1071
    .local v13, "setView":Z
    const/16 v18, 0x0

    move-object/from16 v12, v16

    move/from16 v21, v18

    move/from16 v18, v3

    move/from16 v3, v21

    .end local v16    # "lastView":Landroid/view/View;
    .local v3, "pos":I
    .local v12, "lastView":Landroid/view/View;
    .local v18, "topDark":I
    :goto_8e
    move/from16 v19, v4

    .end local v4    # "centerDark":I
    .local v19, "centerDark":I
    array-length v4, v14

    if-ge v3, v4, :cond_c5

    .line 1072
    aget-object v4, v14, v3

    .line 1073
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_9a

    .line 1074
    move/from16 v20, v7

    goto :goto_be

    .line 1077
    :cond_9a
    if-eqz v12, :cond_b6

    .line 1078
    if-nez v13, :cond_a9

    .line 1079
    move/from16 v20, v7

    if-eqz v17, :cond_a3

    goto :goto_a5

    :cond_a3
    move/from16 v7, v18

    .end local v7    # "topBright":I
    .local v20, "topBright":I
    :goto_a5
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b4

    .line 1081
    .end local v20    # "topBright":I
    .restart local v7    # "topBright":I
    :cond_a9
    move/from16 v20, v7

    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    if-eqz v17, :cond_af

    move v7, v8

    goto :goto_b1

    :cond_af
    move/from16 v7, v19

    :goto_b1
    invoke-virtual {v12, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1083
    :goto_b4
    const/4 v13, 0x1

    goto :goto_b8

    .line 1077
    .end local v20    # "topBright":I
    .restart local v7    # "topBright":I
    :cond_b6
    move/from16 v20, v7

    .line 1086
    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    :goto_b8
    move-object v7, v4

    .line 1087
    .end local v12    # "lastView":Landroid/view/View;
    .local v7, "lastView":Landroid/view/View;
    aget-boolean v12, v15, v3

    move/from16 v17, v12

    move-object v12, v7

    .line 1071
    .end local v4    # "v":Landroid/view/View;
    .end local v7    # "lastView":Landroid/view/View;
    .restart local v12    # "lastView":Landroid/view/View;
    :goto_be
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v19

    move/from16 v7, v20

    goto :goto_8e

    .line 1090
    .end local v20    # "topBright":I
    .local v7, "topBright":I
    :cond_c5
    move/from16 v20, v7

    .end local v7    # "topBright":I
    .restart local v20    # "topBright":I
    if-eqz v12, :cond_fb

    .line 1091
    if-eqz v13, :cond_e9

    .line 1092
    const/4 v4, 0x7

    invoke-virtual {v1, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1093
    const/16 v4, 0x8

    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 1094
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1098
    nop

    .line 1099
    if-eqz v17, :cond_e4

    if-eqz p8, :cond_e2

    move v4, v10

    goto :goto_e5

    :cond_e2
    move v4, v9

    goto :goto_e5

    :cond_e4
    move v4, v5

    .line 1098
    :goto_e5
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_fb

    .line 1101
    :cond_e9
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1102
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1104
    if-eqz v17, :cond_f7

    move v4, v6

    goto :goto_f8

    :cond_f7
    move v4, v2

    :goto_f8
    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1108
    :cond_fb
    :goto_fb
    iget-object v4, v0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 1109
    .local v4, "listView":Landroid/widget/ListView;
    if-eqz v4, :cond_128

    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_128

    .line 1110
    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1112
    sget-boolean v7, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v7, :cond_10e

    .line 1113
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->semSetBottomColor(I)V

    .line 1116
    :cond_10e
    iget v7, v0, Lcom/android/internal/app/AlertController;->mCheckedItem:I

    .line 1117
    .local v7, "checkedItem":I
    const/4 v0, -0x1

    if-le v7, v0, :cond_125

    .line 1118
    const/4 v0, 0x1

    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1119
    nop

    .line 1120
    const/16 v0, 0x13

    move/from16 v16, v2

    const/4 v2, 0x0

    .end local v2    # "fullDark":I
    .local v16, "fullDark":I
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 1119
    invoke-virtual {v4, v7, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_12a

    .line 1117
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_125
    move/from16 v16, v2

    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    goto :goto_12a

    .line 1109
    .end local v7    # "checkedItem":I
    .end local v16    # "fullDark":I
    .restart local v2    # "fullDark":I
    :cond_128
    move/from16 v16, v2

    .line 1123
    .end local v2    # "fullDark":I
    .restart local v16    # "fullDark":I
    :goto_12a
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "customPanel"    # Landroid/view/ViewGroup;

    .line 734
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 735
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .local v0, "customView":Landroid/view/View;
    goto :goto_1a

    .line 736
    .end local v0    # "customView":Landroid/view/View;
    :cond_8
    iget v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_19

    .line 737
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 738
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 739
    .local v0, "customView":Landroid/view/View;
    goto :goto_1a

    .line 740
    .end local v0    # "customView":Landroid/view/View;
    :cond_19
    const/4 v0, 0x0

    .line 743
    .restart local v0    # "customView":Landroid/view/View;
    :goto_1a
    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    .line 744
    .local v1, "hasCustomView":Z
    :cond_1d
    if-eqz v1, :cond_25

    invoke-static {v0}, Lcom/android/internal/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 745
    :cond_25
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 749
    :cond_2c
    if-eqz v1, :cond_5f

    .line 750
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 751
    .local v2, "custom":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_51

    .line 754
    iget v3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 758
    :cond_51
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_5e

    .line 759
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 761
    .end local v2    # "custom":Landroid/widget/FrameLayout;
    :cond_5e
    goto :goto_64

    .line 762
    :cond_5f
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 764
    :goto_64
    return-void
.end method

.method private setupView()V
    .registers 29

    .line 552
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020486

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 554
    .local v10, "parentPanel":Landroid/view/View;
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_17

    .line 555
    new-instance v0, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v9, v10}, Lcom/android/internal/app/AlertController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 567
    :cond_17
    const v0, 0x1020654

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 568
    .local v11, "defaultTopPanel":Landroid/view/View;
    const v1, 0x1020275

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 569
    .local v12, "defaultContentPanel":Landroid/view/View;
    const v2, 0x1020237

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 573
    .local v13, "defaultButtonPanel":Landroid/view/View;
    const v3, 0x102029f

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    .line 574
    .local v14, "customPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v14}, Lcom/android/internal/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 576
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 577
    .local v15, "customTopPanel":Landroid/view/View;
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 578
    .local v8, "customContentPanel":Landroid/view/View;
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 581
    .local v7, "customButtonPanel":Landroid/view/View;
    invoke-direct {v9, v15, v11}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 582
    .local v6, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v8, v12}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 583
    .local v5, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {v9, v7, v13}, Lcom/android/internal/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 585
    .local v4, "buttonPanel":Landroid/view/ViewGroup;
    invoke-virtual {v9, v5}, Lcom/android/internal/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 586
    invoke-virtual {v9, v4}, Lcom/android/internal/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 587
    invoke-virtual {v9, v6}, Lcom/android/internal/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    .line 589
    const/16 v0, 0x8

    if-eqz v14, :cond_66

    .line 590
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_66

    const/4 v3, 0x1

    goto :goto_67

    :cond_66
    const/4 v3, 0x0

    :goto_67
    move/from16 v16, v3

    .line 591
    .local v16, "hasCustomPanel":Z
    if-eqz v6, :cond_73

    .line 592
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_73

    const/4 v3, 0x1

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    .line 593
    .local v3, "hasTopPanel":Z
    :goto_74
    if-eqz v4, :cond_7e

    .line 594
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_7e

    const/4 v1, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    .line 596
    .local v1, "hasButtonPanel":Z
    :goto_7f
    if-eqz v11, :cond_89

    .line 597
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_89

    const/4 v2, 0x1

    goto :goto_8a

    :cond_89
    const/4 v2, 0x0

    :goto_8a
    move/from16 v19, v2

    .line 598
    .local v19, "hasDefaultTopPanel":Z
    if-eqz v12, :cond_96

    .line 599
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_96

    const/4 v2, 0x1

    goto :goto_97

    :cond_96
    const/4 v2, 0x0

    :goto_97
    move/from16 v20, v2

    .line 600
    .local v20, "hasDefaultContentPanel":Z
    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_a5

    .line 601
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_a5

    const/4 v0, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v0, 0x0

    :goto_a6
    move/from16 v21, v0

    .line 603
    .local v21, "hasCustomTitleView":Z
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_cb

    .line 604
    if-eqz v16, :cond_b2

    if-nez v19, :cond_b2

    if-eqz v20, :cond_b4

    :cond_b2
    if-eqz v21, :cond_b7

    .line 605
    :cond_b4
    invoke-direct {v9, v10}, Lcom/android/internal/app/AlertController;->semAdjustParentPanelPadding(Landroid/view/View;)V

    .line 608
    :cond_b7
    if-eqz v16, :cond_c0

    if-eqz v19, :cond_c0

    if-nez v20, :cond_c0

    .line 609
    invoke-direct {v9, v10}, Lcom/android/internal/app/AlertController;->semAdjustTopPanelPadding(Landroid/view/View;)V

    .line 612
    :cond_c0
    if-nez v16, :cond_cb

    if-eqz v3, :cond_cb

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    if-eqz v0, :cond_cb

    .line 613
    invoke-direct {v9, v5}, Lcom/android/internal/app/AlertController;->semAdjustContentPanelPadding(Landroid/view/View;)V

    .line 618
    :cond_cb
    invoke-virtual {v10}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_df

    .line 619
    if-eqz v16, :cond_d5

    move-object v0, v14

    goto :goto_d6

    :cond_d5
    move-object v0, v5

    .line 620
    .local v0, "content":Landroid/view/View;
    :goto_d6
    invoke-direct {v9, v0}, Lcom/android/internal/app/AlertController;->requestFocusForContent(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_df

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->requestFocusForDefaultButton()V

    .line 626
    .end local v0    # "content":Landroid/view/View;
    :cond_df
    if-eqz v16, :cond_e7

    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_e7

    const/4 v0, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v0, 0x0

    :goto_e8
    sput-boolean v0, Lcom/android/internal/app/AlertController;->sHasPaddingBottomInCustom:Z

    .line 630
    if-nez v1, :cond_101

    .line 631
    if-eqz v5, :cond_fb

    .line 632
    const v0, 0x102062e

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 633
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_fb

    .line 634
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 637
    .end local v0    # "spacer":Landroid/view/View;
    :cond_fb
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 641
    :cond_101
    iget-boolean v0, v9, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_108

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/AlertController;->semSetupButtonsPadding()V

    .line 646
    :cond_108
    if-eqz v3, :cond_141

    .line 648
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_113

    .line 649
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    goto :goto_114

    .line 648
    :cond_113
    const/4 v2, 0x1

    .line 653
    :goto_114
    const/4 v0, 0x0

    .line 654
    .local v0, "divider":Landroid/view/View;
    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_128

    iget-object v2, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_128

    if-eqz v16, :cond_120

    goto :goto_128

    .line 663
    :cond_120
    const v2, 0x1020644

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_13a

    .line 655
    :cond_128
    :goto_128
    if-nez v16, :cond_131

    .line 656
    const v2, 0x1020643

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 658
    :cond_131
    if-nez v0, :cond_13a

    .line 659
    const v2, 0x1020642

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 666
    :cond_13a
    :goto_13a
    if-eqz v0, :cond_140

    .line 667
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    .end local v0    # "divider":Landroid/view/View;
    :cond_140
    goto :goto_150

    .line 670
    :cond_141
    if-eqz v5, :cond_150

    .line 671
    const v0, 0x102062f

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, "spacer":Landroid/view/View;
    if-eqz v0, :cond_150

    .line 673
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .end local v0    # "spacer":Landroid/view/View;
    :cond_150
    :goto_150
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    instance-of v2, v0, Lcom/android/internal/app/AlertController$RecycleListView;

    if-eqz v2, :cond_15b

    .line 679
    check-cast v0, Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    .line 683
    :cond_15b
    if-nez v16, :cond_1a0

    .line 684
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_162

    goto :goto_164

    :cond_162
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 685
    .local v0, "content":Landroid/view/View;
    :goto_164
    if-eqz v0, :cond_19b

    .line 686
    if-eqz v3, :cond_16b

    const/16 v17, 0x1

    goto :goto_16d

    :cond_16b
    const/16 v17, 0x0

    .line 687
    :goto_16d
    if-eqz v1, :cond_172

    const/16 v22, 0x2

    goto :goto_174

    :cond_172
    const/16 v22, 0x0

    :goto_174
    or-int v2, v17, v22

    .line 689
    .local v2, "indicators":I
    move/from16 v17, v1

    .end local v1    # "hasButtonPanel":Z
    .local v17, "hasButtonPanel":Z
    iget-boolean v1, v9, Lcom/android/internal/app/AlertController;->mIsItemChoiceLayout:Z

    if-eqz v1, :cond_194

    .line 690
    iget-object v1, v9, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v22, v4

    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .local v22, "buttonPanel":Landroid/view/ViewGroup;
    const v4, 0x1020587

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 691
    .local v1, "indicatorUp":Landroid/view/View;
    if-eqz v1, :cond_18f

    if-eqz v3, :cond_18f

    .line 692
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :cond_18f
    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setScrollIndicators(II)V

    .line 695
    .end local v1    # "indicatorUp":Landroid/view/View;
    goto :goto_1a4

    .line 696
    .end local v22    # "buttonPanel":Landroid/view/ViewGroup;
    .restart local v4    # "buttonPanel":Landroid/view/ViewGroup;
    :cond_194
    move-object/from16 v22, v4

    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .restart local v22    # "buttonPanel":Landroid/view/ViewGroup;
    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setScrollIndicators(II)V

    goto :goto_1a4

    .line 685
    .end local v2    # "indicators":I
    .end local v17    # "hasButtonPanel":Z
    .end local v22    # "buttonPanel":Landroid/view/ViewGroup;
    .local v1, "hasButtonPanel":Z
    .restart local v4    # "buttonPanel":Landroid/view/ViewGroup;
    :cond_19b
    move/from16 v17, v1

    move-object/from16 v22, v4

    .end local v1    # "hasButtonPanel":Z
    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .restart local v17    # "hasButtonPanel":Z
    .restart local v22    # "buttonPanel":Landroid/view/ViewGroup;
    goto :goto_1a4

    .line 683
    .end local v0    # "content":Landroid/view/View;
    .end local v17    # "hasButtonPanel":Z
    .end local v22    # "buttonPanel":Landroid/view/ViewGroup;
    .restart local v1    # "hasButtonPanel":Z
    .restart local v4    # "buttonPanel":Landroid/view/ViewGroup;
    :cond_1a0
    move/from16 v17, v1

    move-object/from16 v22, v4

    .line 702
    .end local v1    # "hasButtonPanel":Z
    .end local v4    # "buttonPanel":Landroid/view/ViewGroup;
    .restart local v17    # "hasButtonPanel":Z
    .restart local v22    # "buttonPanel":Landroid/view/ViewGroup;
    :goto_1a4
    iget-object v0, v9, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    const/4 v4, 0x0

    move/from16 v23, v3

    const/4 v3, 0x0

    .end local v3    # "hasTopPanel":Z
    .local v23, "hasTopPanel":Z
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 704
    .local v18, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v6

    move-object v3, v5

    move-object v4, v14

    move-object/from16 v24, v5

    .end local v5    # "contentPanel":Landroid/view/ViewGroup;
    .local v24, "contentPanel":Landroid/view/ViewGroup;
    move-object/from16 v5, v22

    move-object/from16 v25, v6

    .end local v6    # "topPanel":Landroid/view/ViewGroup;
    .local v25, "topPanel":Landroid/view/ViewGroup;
    move/from16 v6, v23

    move-object/from16 v26, v7

    .end local v7    # "customButtonPanel":Landroid/view/View;
    .local v26, "customButtonPanel":Landroid/view/View;
    move/from16 v7, v16

    move-object/from16 v27, v8

    .end local v8    # "customContentPanel":Landroid/view/View;
    .local v27, "customContentPanel":Landroid/view/View;
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 706
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 707
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 199
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 200
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x112000f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 201
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    return v3
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3
    .param p1, "whichButton"    # I

    .line 491
    packed-switch p1, :pswitch_data_e

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 493
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    .line 495
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    .line 497
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .registers 5
    .param p1, "attrId"    # I

    .line 475
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 476
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 477
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .registers 3

    .line 289
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->selectContentView()I

    move-result v0

    .line 290
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 291
    invoke-direct {p0}, Lcom/android/internal/app/AlertController;->setupView()V

    .line 292
    return-void
.end method

.method public installContent(Lcom/android/internal/app/AlertController$AlertParams;)V
    .registers 2
    .param p1, "params"    # Lcom/android/internal/app/AlertController$AlertParams;

    .line 283
    invoke-virtual {p1, p0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 506
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .line 401
    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    .line 402
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 405
    :cond_a
    packed-switch p1, :pswitch_data_26

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_15
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 409
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 410
    goto :goto_24

    .line 413
    :pswitch_1a
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 414
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 415
    goto :goto_24

    .line 418
    :pswitch_1f
    iput-object p2, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 419
    iput-object p4, p0, Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 420
    nop

    .line 425
    :goto_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2
    .param p1, "layoutHint"    # I

    .line 382
    iput p1, p0, Lcom/android/internal/app/AlertController;->mButtonPanelLayoutHint:I

    .line 383
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 319
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 320
    return-void
.end method

.method public setIcon(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 436
    iput p1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 438
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 439
    if-eqz p1, :cond_17

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1c

    .line 443
    :cond_17
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 455
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    .line 458
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_19

    .line 459
    if-eqz p1, :cond_14

    .line 460
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 463
    :cond_14
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 466
    :cond_19
    :goto_19
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .registers 2
    .param p1, "forceInverseBackground"    # Z

    .line 481
    iput-boolean p1, p0, Lcom/android/internal/app/AlertController;->mForceInverseBackground:Z

    .line 482
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 324
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 325
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 326
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_9
    return-void
.end method

.method public setMessageHyphenationFrequency(I)V
    .registers 3
    .param p1, "hyphenationFrequency"    # I

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    .line 340
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 341
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 343
    :cond_d
    return-void
.end method

.method public setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .registers 3
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 331
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    .line 332
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 333
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 335
    :cond_9
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 307
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 308
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 309
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    return-void
.end method

.method public setView(I)V
    .registers 3
    .param p1, "layoutResId"    # I

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 350
    iput p1, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 352
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 359
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 361
    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 362
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 369
    iput-object p1, p0, Lcom/android/internal/app/AlertController;->mView:Landroid/view/View;

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/AlertController;->mViewLayoutResId:I

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController;->mViewSpacingSpecified:Z

    .line 372
    iput p2, p0, Lcom/android/internal/app/AlertController;->mViewSpacingLeft:I

    .line 373
    iput p3, p0, Lcom/android/internal/app/AlertController;->mViewSpacingTop:I

    .line 374
    iput p4, p0, Lcom/android/internal/app/AlertController;->mViewSpacingRight:I

    .line 375
    iput p5, p0, Lcom/android/internal/app/AlertController;->mViewSpacingBottom:I

    .line 376
    return-void
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .registers 19
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 863
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v3, 0x2

    .line 864
    .local v3, "BIT_BUTTON_NEGATIVE":I
    const/4 v4, 0x4

    .line 865
    .local v4, "BIT_BUTTON_NEUTRAL":I
    const/4 v5, 0x0

    .line 868
    .local v5, "whichButtons":I
    iget-object v6, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_button_background"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b

    move v6, v7

    goto :goto_1c

    :cond_1b
    move v6, v8

    .line 871
    .local v6, "isEnabledShowBtnBg":Z
    :goto_1c
    iget-object v9, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2c

    move v9, v7

    goto :goto_2d

    :cond_2c
    move v9, v8

    .line 873
    .local v9, "isThemeApplied":Z
    :goto_2d
    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    .line 874
    .local v10, "typedValue":Landroid/util/TypedValue;
    iget-object v11, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    const v12, 0x1010434

    invoke-virtual {v11, v12, v10, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 877
    iget v11, v10, Landroid/util/TypedValue;->resourceId:I

    if-eqz v11, :cond_4b

    .line 878
    iget-object v11, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    iget v12, v10, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    .local v11, "buttonTextColor":I
    goto :goto_4d

    .line 880
    .end local v11    # "buttonTextColor":I
    :cond_4b
    iget v11, v10, Landroid/util/TypedValue;->data:I

    .line 884
    .restart local v11    # "buttonTextColor":I
    :goto_4d
    const v12, 0x1020019

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 885
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v13, 0x8

    if-eqz v12, :cond_6d

    .line 888
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7a

    .line 890
    :cond_6d
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 892
    or-int/2addr v5, v2

    .line 895
    :goto_7a
    const v12, 0x102001a

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 896
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 899
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_a5

    .line 901
    :cond_98
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 902
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 904
    or-int/2addr v5, v3

    .line 907
    :goto_a5
    const v12, 0x102001b

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 908
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 911
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d0

    .line 913
    :cond_c3
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v12, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 914
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v12, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 916
    or-int/2addr v5, v4

    .line 920
    :goto_d0
    if-eqz v9, :cond_e5

    iget-boolean v12, v0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v12, :cond_e5

    .line 921
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 922
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 923
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v12, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 926
    :cond_e5
    iget-boolean v12, v0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v12, :cond_129

    .line 927
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    .line 928
    .local v12, "outValue":Landroid/util/TypedValue;
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x1010031

    invoke-virtual {v14, v15, v12, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 930
    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    if-lez v14, :cond_11a

    .line 931
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    iget v15, v12, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 932
    .local v14, "backgroundColor":I
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v15, v6, v14}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 933
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v15, v6, v14}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 934
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15, v6, v14}, Landroid/widget/Button;->semSetButtonShapeEnabled(ZI)V

    .line 935
    .end local v14    # "backgroundColor":I
    goto :goto_129

    .line 936
    :cond_11a
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 937
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 938
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v6}, Landroid/widget/Button;->semSetButtonShapeEnabled(Z)V

    .line 943
    .end local v12    # "outValue":Landroid/util/TypedValue;
    :cond_129
    :goto_129
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/internal/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_148

    .line 948
    if-ne v5, v2, :cond_139

    .line 949
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_148

    .line 950
    :cond_139
    if-ne v5, v3, :cond_141

    .line 951
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_148

    .line 952
    :cond_141
    if-ne v5, v4, :cond_148

    .line 953
    iget-object v12, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {v0, v12}, Lcom/android/internal/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 957
    :cond_148
    :goto_148
    if-eqz v5, :cond_14c

    move v12, v7

    goto :goto_14d

    :cond_14c
    move v12, v8

    .line 958
    .local v12, "hasButtons":Z
    :goto_14d
    if-nez v12, :cond_152

    .line 959
    invoke-virtual {v1, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 963
    :cond_152
    iget-boolean v13, v0, Lcom/android/internal/app/AlertController;->mThemeIsDeviceDefault:Z

    if-eqz v13, :cond_1a5

    .line 964
    iget-object v13, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v14, 0x1020580

    invoke-virtual {v13, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 965
    .local v13, "divider1":Landroid/view/View;
    iget-object v14, v0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v15, 0x1020581

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 966
    .local v14, "divider2":Landroid/view/View;
    iget-object v15, v0, Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/widget/Button;->getVisibility()I

    move-result v15

    if-nez v15, :cond_172

    move v15, v7

    goto :goto_173

    :cond_172
    move v15, v8

    .line 967
    .local v15, "buttonNeutralVisible":Z
    :goto_173
    iget-object v7, v0, Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-nez v7, :cond_17d

    const/4 v7, 0x1

    goto :goto_17e

    :cond_17d
    move v7, v8

    .line 968
    .local v7, "buttonPositiveVisible":Z
    :goto_17e
    iget-object v8, v0, Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-nez v8, :cond_189

    const/16 v16, 0x1

    goto :goto_18b

    :cond_189
    const/16 v16, 0x0

    :goto_18b
    move/from16 v8, v16

    .line 970
    .local v8, "buttonNegativeVisible":Z
    if-eqz v14, :cond_19b

    if-eqz v15, :cond_193

    if-nez v7, :cond_197

    :cond_193
    if-eqz v15, :cond_19b

    if-eqz v8, :cond_19b

    .line 972
    :cond_197
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 975
    :cond_19b
    if-eqz v13, :cond_1a5

    if-eqz v7, :cond_1a5

    if-eqz v8, :cond_1a5

    .line 976
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 980
    .end local v7    # "buttonPositiveVisible":Z
    .end local v8    # "buttonNegativeVisible":Z
    .end local v13    # "divider1":Landroid/view/View;
    .end local v14    # "divider2":Landroid/view/View;
    .end local v15    # "buttonNeutralVisible":Z
    :cond_1a5
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 815
    const v0, 0x102050f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 816
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 819
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 820
    if-nez v0, :cond_1d

    .line 821
    return-void

    .line 824
    :cond_1d
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4d

    .line 825
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10503d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 830
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3f

    .line 831
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 833
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mMessageHyphenationFrequency:Ljava/lang/Integer;

    if-eqz v0, :cond_7d

    .line 834
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    goto :goto_7d

    .line 837
    :cond_4d
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 840
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_7a

    .line 841
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 842
    .local v0, "scrollParent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 843
    .local v1, "childIndex":I
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 844
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 846
    .end local v0    # "scrollParent":Landroid/view/ViewGroup;
    .end local v1    # "childIndex":I
    goto :goto_7d

    .line 847
    :cond_7a
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 850
    :cond_7d
    :goto_7d
    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .line 767
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x1020647

    const/16 v2, 0x8

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_25

    .line 769
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 772
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 775
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 776
    .local v1, "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 777
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "titleTemplate":Landroid/view/View;
    goto/16 :goto_ac

    .line 778
    :cond_25
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x1020006

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 780
    iget-object v0, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 781
    .local v0, "hasTextTitle":Z
    if-eqz v0, :cond_9b

    iget-boolean v3, p0, Lcom/android/internal/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_9b

    .line 783
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x10201e1

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 784
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10503e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/AlertController;->semCheckMaxFontScale(Landroid/widget/TextView;I)V

    .line 791
    iget v1, p0, Lcom/android/internal/app/AlertController;->mIconId:I

    if-eqz v1, :cond_6e

    .line 792
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_ac

    .line 793
    :cond_6e
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_78

    .line 794
    iget-object v2, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_ac

    .line 798
    :cond_78
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 799
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 800
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 801
    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 798
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 802
    iget-object v1, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ac

    .line 806
    :cond_9b
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 807
    .restart local v1    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 808
    iget-object v3, p0, Lcom/android/internal/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 809
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 812
    .end local v0    # "hasTextTitle":Z
    .end local v1    # "titleTemplate":Landroid/view/View;
    :goto_ac
    return-void
.end method
