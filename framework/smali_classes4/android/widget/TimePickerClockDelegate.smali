.class Landroid/widget/TimePickerClockDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerClockDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;,
        Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;,
        Landroid/widget/TimePickerClockDelegate$ChangeSource;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final ATTRS_DISABLED_ALPHA:[I

.field private static final ATTRS_TEXT_COLOR:[I

.field private static final DELAY_COMMIT_MILLIS:J = 0x7d0L

.field private static final FROM_EXTERNAL_API:I = 0x0

.field private static final FROM_INPUT_PICKER:I = 0x2

.field private static final FROM_RADIAL_PICKER:I = 0x1

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final HOUR_INDEX:I = 0x0

.field private static final MINUTE_INDEX:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private mAllowAutoAdvance:Z

.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmLayout:Landroid/view/View;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mCommitHour:Ljava/lang/Runnable;

.field private final mCommitMinute:Ljava/lang/Runnable;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private final mFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mHourFormatShowLeadingZero:Z

.field private mHourFormatStartsAtZero:Z

.field private final mHourView:Lcom/android/internal/widget/NumericTextView;

.field private mIs24Hour:Z

.field private mIsAmPmAtLeft:Z

.field private mIsAmPmAtTop:Z

.field private mIsEnabled:Z

.field private mLastAnnouncedIsHour:Z

.field private mLastAnnouncedText:Ljava/lang/CharSequence;

.field private final mMinuteView:Lcom/android/internal/widget/NumericTextView;

.field private final mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

.field private final mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mRadialPickerModeEnabled:Z

.field private final mRadialTimePickerHeader:Landroid/view/View;

.field private final mRadialTimePickerModeButton:Landroid/widget/ImageButton;

.field private final mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

.field private final mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

.field private final mSelectHours:Ljava/lang/String;

.field private final mSelectMinutes:Ljava/lang/String;

.field private final mSeparatorView:Landroid/widget/TextView;

.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTextInputPickerHeader:Landroid/view/View;

.field private final mTextInputPickerModeEnabledDescription:Ljava/lang/String;

.field private final mTextInputPickerView:Landroid/widget/TextInputTimePickerView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowAutoAdvance(Landroid/widget/TimePickerClockDelegate;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCommitHour(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCommitMinute(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHourView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectMinutes(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLocalizedHour(Landroid/widget/TimePickerClockDelegate;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAmOrPm(Landroid/widget/TimePickerClockDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentItemShowing(Landroid/widget/TimePickerClockDelegate;IZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHourInternal(Landroid/widget/TimePickerClockDelegate;IIZZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMinuteInternal(Landroid/widget/TimePickerClockDelegate;IIZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleRadialPickerMode(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->toggleRadialPickerMode()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryVibrate(Landroid/widget/TimePickerClockDelegate;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->tryVibrate()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 80
    const v0, 0x1010098

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    .line 81
    const v0, 0x1010033

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    return-void
.end method

.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 30
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 96
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 111
    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 118
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    .line 120
    iput-boolean v6, v0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    .line 921
    new-instance v7, Landroid/widget/TimePickerClockDelegate$2;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$2;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueSelectedListener:Landroid/widget/RadialTimePickerView$OnValueSelectedListener;

    .line 953
    new-instance v8, Landroid/widget/TimePickerClockDelegate$3;

    invoke-direct {v8, v0}, Landroid/widget/TimePickerClockDelegate$3;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mOnValueTypedListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    .line 971
    new-instance v9, Landroid/widget/TimePickerClockDelegate$4;

    invoke-direct {v9, v0}, Landroid/widget/TimePickerClockDelegate$4;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v9, v0, Landroid/widget/TimePickerClockDelegate;->mDigitEnteredListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    .line 1007
    new-instance v10, Landroid/widget/TimePickerClockDelegate$5;

    invoke-direct {v10, v0}, Landroid/widget/TimePickerClockDelegate$5;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mCommitHour:Ljava/lang/Runnable;

    .line 1014
    new-instance v10, Landroid/widget/TimePickerClockDelegate$6;

    invoke-direct {v10, v0}, Landroid/widget/TimePickerClockDelegate$6;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mCommitMinute:Ljava/lang/Runnable;

    .line 1021
    new-instance v10, Landroid/widget/TimePickerClockDelegate$7;

    invoke-direct {v10, v0}, Landroid/widget/TimePickerClockDelegate$7;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1048
    new-instance v11, Landroid/widget/TimePickerClockDelegate$8;

    invoke-direct {v11, v0}, Landroid/widget/TimePickerClockDelegate$8;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    iput-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mClickListener:Landroid/view/View$OnClickListener;

    .line 135
    iget-object v12, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {v12, v2, v13, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 137
    .local v12, "a":Landroid/content/res/TypedArray;
    iget-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 139
    .local v13, "inflater":Landroid/view/LayoutInflater;
    iget-object v14, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 141
    .local v14, "res":Landroid/content/res/Resources;
    const v15, 0x1040c7b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    .line 142
    const v5, 0x1040c80

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 144
    const v15, 0x10901a6

    const/16 v5, 0xc

    invoke-virtual {v12, v5, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 146
    .local v15, "layoutResourceId":I
    move-object/from16 v5, p1

    move-object/from16 v19, v14

    .end local v14    # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    invoke-virtual {v13, v15, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 147
    .local v14, "mainView":Landroid/view/View;
    invoke-virtual {v14, v6}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 148
    const v6, 0x1020640

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    .line 149
    new-instance v5, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    move-object/from16 v20, v13

    .end local v13    # "inflater":Landroid/view/LayoutInflater;
    .local v20, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x0

    invoke-direct {v5, v13}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate-IA;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    const v5, 0x1020350

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/NumericTextView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    .line 153
    invoke-virtual {v5, v11}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-virtual {v5, v10}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    invoke-virtual {v5, v9}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    .line 156
    new-instance v13, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    move/from16 v21, v15

    const v15, 0x1040c7b

    .end local v15    # "layoutResourceId":I
    .local v21, "layoutResourceId":I
    invoke-direct {v13, v1, v15}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v13}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 158
    const v13, 0x102059b

    invoke-virtual {v14, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    .line 159
    const v15, 0x102040d

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/NumericTextView;

    iput-object v15, v0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    .line 160
    invoke-virtual {v15, v11}, Lcom/android/internal/widget/NumericTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v15, v10}, Lcom/android/internal/widget/NumericTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    invoke-virtual {v15, v9}, Lcom/android/internal/widget/NumericTextView;->setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V

    .line 163
    new-instance v9, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;

    const v10, 0x1040c80

    invoke-direct {v9, v1, v10}, Landroid/widget/TimePickerClockDelegate$ClickActionDelegate;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v15, v9}, Lcom/android/internal/widget/NumericTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 165
    const/16 v9, 0x3b

    const/4 v10, 0x0

    invoke-virtual {v15, v10, v9}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    .line 168
    const v9, 0x10201f3

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 169
    new-instance v10, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate;-><init>(Landroid/widget/TimePickerClockDelegate$NearestTouchDelegate-IA;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 171
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "amPmStrings":[Ljava/lang/String;
    const v10, 0x10201f1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RadioButton;

    iput-object v10, v0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    .line 173
    const/16 v17, 0x0

    aget-object v18, v1, v17

    move-object/from16 v17, v8

    invoke-static/range {v18 .. v18}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v10, v11}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-static {v10}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 177
    const v8, 0x10204a3

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    iput-object v8, v0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    .line 178
    const/4 v9, 0x1

    aget-object v16, v1, v9

    invoke-static/range {v16 .. v16}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v8, v11}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-static {v8}, Landroid/widget/TimePickerClockDelegate;->ensureMinimumTextWidth(Landroid/widget/TextView;)V

    .line 185
    const/4 v9, 0x0

    .line 188
    .local v9, "headerTextColor":Landroid/content/res/ColorStateList;
    move-object/from16 v18, v1

    move-object/from16 v22, v9

    const/4 v1, 0x0

    const/4 v11, 0x1

    .end local v1    # "amPmStrings":[Ljava/lang/String;
    .end local v9    # "headerTextColor":Landroid/content/res/ColorStateList;
    .local v18, "amPmStrings":[Ljava/lang/String;
    .local v22, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v12, v11, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 190
    .local v9, "timeHeaderTextAppearance":I
    if-eqz v9, :cond_15e

    .line 191
    iget-object v11, v0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v23, v7

    sget-object v7, Landroid/widget/TimePickerClockDelegate;->ATTRS_TEXT_COLOR:[I

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v7, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 193
    .local v2, "textAppearance":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 194
    .local v7, "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    invoke-direct {v0, v7}, Landroid/widget/TimePickerClockDelegate;->applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 195
    .end local v22    # "headerTextColor":Landroid/content/res/ColorStateList;
    .local v1, "headerTextColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_162

    .line 190
    .end local v1    # "headerTextColor":Landroid/content/res/ColorStateList;
    .end local v2    # "textAppearance":Landroid/content/res/TypedArray;
    .end local v7    # "legacyHeaderTextColor":Landroid/content/res/ColorStateList;
    .restart local v22    # "headerTextColor":Landroid/content/res/ColorStateList;
    :cond_15e
    move-object/from16 v23, v7

    move-object/from16 v1, v22

    .line 198
    .end local v22    # "headerTextColor":Landroid/content/res/ColorStateList;
    .restart local v1    # "headerTextColor":Landroid/content/res/ColorStateList;
    :goto_162
    const/16 v2, 0xb

    if-nez v1, :cond_16a

    .line 199
    invoke-virtual {v12, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 202
    :cond_16a
    const v7, 0x1020374

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    .line 204
    if-eqz v1, :cond_184

    .line 205
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 206
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 207
    invoke-virtual {v15, v1}, Lcom/android/internal/widget/NumericTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 208
    invoke-virtual {v10, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 209
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_184
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_199

    .line 214
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    invoke-virtual {v12, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    :cond_199
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    const v5, 0x10204cb

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadialTimePickerView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    .line 223
    move-object/from16 v6, p3

    invoke-virtual {v5, v6, v3, v4}, Landroid/widget/RadialTimePickerView;->applyAttributes(Landroid/util/AttributeSet;II)V

    .line 224
    move-object/from16 v7, v23

    invoke-virtual {v5, v7}, Landroid/widget/RadialTimePickerView;->setOnValueSelectedListener(Landroid/widget/RadialTimePickerView$OnValueSelectedListener;)V

    .line 226
    const v5, 0x1020381

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextInputTimePickerView;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    .line 227
    move-object/from16 v7, v17

    invoke-virtual {v5, v7}, Landroid/widget/TextInputTimePickerView;->setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V

    .line 229
    nop

    .line 230
    const v5, 0x1020650

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    .line 231
    new-instance v7, Landroid/widget/TimePickerClockDelegate$1;

    invoke-direct {v7, v0}, Landroid/widget/TimePickerClockDelegate$1;-><init>(Landroid/widget/TimePickerClockDelegate;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1040e25

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1040e26

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    .line 242
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/widget/TimePickerClockDelegate;->mAllowAutoAdvance:Z

    .line 244
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 247
    iget-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 248
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 249
    .local v2, "currentHour":I
    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 250
    .local v5, "currentMinute":I
    iget-boolean v7, v0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    const/4 v8, 0x0

    invoke-direct {v0, v2, v5, v7, v8}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 251
    return-void
.end method

.method private applyLegacyColorFixes(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 8
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 359
    if-eqz p1, :cond_61

    const v0, 0x10102fe

    invoke-virtual {p1, v0}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_61

    .line 365
    :cond_c
    const v1, 0x10100a1

    invoke-virtual {p1, v1}, Landroid/content/res/ColorStateList;->hasState(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 366
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/util/StateSet;->get(I)[I

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 368
    .local v1, "activatedColor":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .local v3, "defaultColor":I
    goto :goto_46

    .line 371
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 374
    .restart local v1    # "activatedColor":I
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/widget/TimePickerClockDelegate;->ATTRS_DISABLED_ALPHA:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 375
    .local v3, "ta":Landroid/content/res/TypedArray;
    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 376
    .local v4, "disabledAlpha":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    invoke-direct {p0, v1, v4}, Landroid/widget/TimePickerClockDelegate;->multiplyAlphaComponent(IF)I

    move-result v5

    move v3, v5

    .line 380
    .end local v4    # "disabledAlpha":F
    .local v3, "defaultColor":I
    :goto_46
    if-eqz v1, :cond_5f

    if-nez v3, :cond_4b

    goto :goto_5f

    .line 385
    :cond_4b
    filled-new-array {v0}, [I

    move-result-object v0

    new-array v2, v2, [I

    filled-new-array {v0, v2}, [[I

    move-result-object v0

    .line 386
    .local v0, "stateSet":[[I
    filled-new-array {v1, v3}, [I

    move-result-object v2

    .line 387
    .local v2, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    .line 382
    .end local v0    # "stateSet":[[I
    .end local v2    # "colors":[I
    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return-object v0

    .line 360
    .end local v1    # "activatedColor":I
    .end local v3    # "defaultColor":I
    :cond_61
    :goto_61
    return-object p1
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .registers 2
    .param p0, "v"    # Landroid/widget/TextView;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 298
    .local v0, "minWidth":I
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 299
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 300
    return-void
.end method

.method private getCurrentItemShowing()I
    .registers 2

    .line 732
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    return v0
.end method

.method private static getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "dateTimePattern"    # Ljava/lang/String;

    .line 833
    const-string v0, ":"

    .line 834
    .local v0, "defaultSeparator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 835
    .local v1, "foundHourPattern":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 836
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_40

    .line 855
    if-nez v1, :cond_34

    .line 856
    goto :goto_31

    .line 842
    :sswitch_14
    const/4 v1, 0x1

    .line 843
    goto :goto_31

    .line 847
    :sswitch_16
    if-nez v1, :cond_19

    .line 848
    goto :goto_31

    .line 850
    :cond_19
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 851
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 852
    .local v3, "quotedSubstring":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;I)I

    move-result v5

    .line 853
    .local v5, "quotedTextLength":I
    invoke-virtual {v3, v4, v5}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 845
    .end local v3    # "quotedSubstring":Landroid/text/SpannableStringBuilder;
    .end local v5    # "quotedTextLength":I
    :sswitch_30
    nop

    .line 835
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 858
    :cond_34
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 861
    .end local v2    # "i":I
    :cond_3d
    const-string v2, ":"

    return-object v2

    :sswitch_data_40
    .sparse-switch
        0x20 -> :sswitch_30
        0x27 -> :sswitch_16
        0x48 -> :sswitch_14
        0x4b -> :sswitch_14
        0x68 -> :sswitch_14
        0x6b -> :sswitch_14
    .end sparse-switch
.end method

.method private getLocalizedHour(I)I
    .registers 4
    .param p1, "hourOfDay"    # I

    .line 773
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-nez v0, :cond_6

    .line 775
    rem-int/lit8 p1, p1, 0xc

    .line 778
    :cond_6
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_14

    if-nez p1, :cond_14

    .line 780
    if-eqz v0, :cond_11

    const/16 v0, 0x18

    goto :goto_13

    :cond_11
    const/16 v0, 0xc

    :goto_13
    move p1, v0

    .line 783
    :cond_14
    return p1
.end method

.method private initialize(IIZI)V
    .registers 5
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I
    .param p3, "is24HourView"    # Z
    .param p4, "index"    # I

    .line 414
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 415
    iput p2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 416
    iput-boolean p3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 417
    invoke-direct {p0, p4}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 418
    return-void
.end method

.method private static lastIndexOfAny(Ljava/lang/String;[C)I
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "any"    # [C

    .line 865
    array-length v0, p1

    .line 866
    .local v0, "lengthAny":I
    if-lez v0, :cond_1d

    .line 867
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 868
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 869
    .local v2, "c":C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_10
    if-ge v3, v0, :cond_1a

    .line 870
    aget-char v4, p1, v3

    if-ne v2, v4, :cond_17

    .line 871
    return v1

    .line 869
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 867
    .end local v2    # "c":C
    .end local v3    # "j":I
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 876
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, -0x1

    return v1
.end method

.method private multiplyAlphaComponent(IF)I
    .registers 7
    .param p1, "color"    # I
    .param p2, "alphaMod"    # F

    .line 391
    const v0, 0xffffff

    and-int/2addr v0, p1

    .line 392
    .local v0, "srcRgb":I
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 393
    .local v1, "srcAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 394
    .local v2, "dstAlpha":I
    shl-int/lit8 v3, v2, 0x18

    or-int/2addr v3, v0

    return v3
.end method

.method static final obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .line 344
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v1, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v1, p0}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private onTimeChanged()V
    .registers 5

    .line 739
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 740
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_19

    .line 741
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 743
    :cond_19
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_2c

    .line 744
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAutoFillChangeListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 746
    :cond_2c
    return-void
.end method

.method private setAmOrPm(I)V
    .registers 6
    .param p1, "amOrPm"    # I

    .line 909
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 911
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 912
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 913
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 914
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_27

    .line 915
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 918
    :cond_27
    return-void
.end method

.method private setAmPmStart(Z)V
    .registers 9
    .param p1, "isAmPmAtStart"    # Z

    .line 454
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 456
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5d

    .line 457
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_5d

    .line 483
    :cond_17
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_25

    .line 484
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    if-eqz v2, :cond_a6

    .line 486
    :cond_25
    iget-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    if-ne v2, p1, :cond_2a

    .line 488
    return-void

    .line 492
    :cond_2a
    if-eqz p1, :cond_37

    .line 493
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    .line 494
    .local v2, "otherViewId":I
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 495
    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_41

    .line 497
    .end local v2    # "otherViewId":I
    :cond_37
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result v2

    .line 498
    .restart local v2    # "otherViewId":I
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 503
    :goto_41
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 504
    .local v1, "otherView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 505
    .local v3, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 506
    .local v4, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 507
    .local v5, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 508
    .local v6, "right":I
    invoke-virtual {v1, v5, v4, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 510
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtTop:Z

    goto :goto_a6

    .line 458
    .end local v1    # "otherView":Landroid/view/View;
    .end local v2    # "otherViewId":I
    .end local v3    # "top":I
    .end local v4    # "bottom":I
    .end local v5    # "left":I
    .end local v6    # "right":I
    :cond_5d
    :goto_5d
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 461
    .local v2, "margin":I
    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-nez v4, :cond_77

    .line 462
    move v4, p1

    .local v4, "isAmPmAtLeft":Z
    goto :goto_79

    .line 464
    .end local v4    # "isAmPmAtLeft":Z
    :cond_77
    xor-int/lit8 v4, p1, 0x1

    .line 467
    .restart local v4    # "isAmPmAtLeft":Z
    :goto_79
    if-eqz v4, :cond_88

    .line 468
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 469
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_94

    .line 471
    :cond_88
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 472
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v5}, Lcom/android/internal/widget/NumericTextView;->getId()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 475
    :goto_94
    if-eqz p1, :cond_9d

    .line 476
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 477
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_a3

    .line 479
    :cond_9d
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 480
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 482
    :goto_a3
    iput-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIsAmPmAtLeft:Z

    .line 483
    .end local v2    # "margin":I
    .end local v4    # "isAmPmAtLeft":Z
    nop

    .line 513
    :cond_a6
    :goto_a6
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    return-void
.end method

.method private setCurrentItemShowing(IZZ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "animateCircle"    # Z
    .param p3, "announce"    # Z

    .line 892
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->setCurrentItemShowing(IZ)V

    .line 894
    if-nez p1, :cond_11

    .line 895
    if-eqz p3, :cond_1a

    .line 896
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_1a

    .line 899
    :cond_11
    if-eqz p3, :cond_1a

    .line 900
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 904
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    .line 905
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    if-ne p1, v2, :cond_2b

    move v1, v2

    :cond_2b
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumericTextView;->setActivated(Z)V

    .line 906
    return-void
.end method

.method private setHourInternal(IIZZ)V
    .registers 8
    .param p1, "hour"    # I
    .param p2, "source"    # I
    .param p3, "announce"    # Z
    .param p4, "notify"    # Z

    .line 534
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    if-ne v0, p1, :cond_5

    .line 535
    return-void

    .line 538
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    .line 539
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 540
    invoke-direct {p0, p1, p3}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 541
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 543
    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    .line 544
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 545
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    const/16 v2, 0xc

    if-ge p1, v2, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    invoke-virtual {v1, v0}, Landroid/widget/RadialTimePickerView;->setAmOrPm(I)Z

    .line 547
    :cond_22
    const/4 v0, 0x2

    if-eq p2, v0, :cond_28

    .line 548
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 551
    :cond_28
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 552
    if-eqz p4, :cond_32

    .line 553
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 555
    :cond_32
    return-void
.end method

.method private setMinuteInternal(IIZ)V
    .registers 5
    .param p1, "minute"    # I
    .param p2, "source"    # I
    .param p3, "notify"    # Z

    .line 583
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    if-ne v0, p1, :cond_5

    .line 584
    return-void

    .line 587
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->resetAutofilledValue()V

    .line 588
    iput p1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 591
    if-eq p2, v0, :cond_15

    .line 592
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 594
    :cond_15
    const/4 v0, 0x2

    if-eq p2, v0, :cond_1b

    .line 595
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 598
    :cond_1b
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 599
    if-eqz p3, :cond_25

    .line 600
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 602
    :cond_25
    return-void
.end method

.method private toggleRadialPickerMode()V
    .registers 4

    .line 254
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    .line 255
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x1080137

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 260
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 262
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    goto :goto_6b

    .line 264
    :cond_2d
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, v2}, Landroid/widget/RadialTimePickerView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0, v1}, Landroid/widget/TextInputTimePickerView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    const v1, 0x1080184

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerModeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerModeEnabledDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 272
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 273
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_68

    .line 274
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 276
    :cond_68
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialPickerModeEnabled:Z

    .line 278
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_6b
    return-void
.end method

.method private tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isHour"    # Z

    .line 880
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    if-ne v0, p2, :cond_c

    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 882
    :cond_c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 883
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedText:Ljava/lang/CharSequence;

    .line 884
    iput-boolean p2, p0, Landroid/widget/TimePickerClockDelegate;->mLastAnnouncedIsHour:Z

    .line 886
    :cond_15
    return-void
.end method

.method private tryVibrate()V
    .registers 3

    .line 749
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->performHapticFeedback(I)Z

    .line 750
    return-void
.end method

.method private updateAmPmLabelStates(I)V
    .registers 6
    .param p1, "amOrPm"    # I

    .line 753
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 754
    .local v2, "isAm":Z
    :goto_7
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 755
    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 757
    if-ne p1, v1, :cond_14

    move v0, v1

    .line 758
    .local v0, "isPm":Z
    :cond_14
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setActivated(Z)V

    .line 759
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 760
    return-void
.end method

.method private updateHeaderAmPm()V
    .registers 5

    .line 442
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v0, :cond_c

    .line 443
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmPmLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_29

    .line 446
    :cond_c
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    const-string v1, "hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "dateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 448
    .local v1, "isAmPmAtStart":Z
    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->setAmPmStart(Z)V

    .line 449
    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_25

    const/4 v2, 0x0

    goto :goto_26

    :cond_25
    const/4 v2, 0x1

    :goto_26
    invoke-direct {p0, v2}, Landroid/widget/TimePickerClockDelegate;->updateAmPmLabelStates(I)V

    .line 451
    .end local v0    # "dateTimePattern":Ljava/lang/String;
    .end local v1    # "isAmPmAtStart":Z
    :goto_29
    return-void
.end method

.method private updateHeaderHour(IZ)V
    .registers 6
    .param p1, "hourOfDay"    # I
    .param p2, "announce"    # Z

    .line 787
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v0

    .line 788
    .local v0, "localizedHour":I
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 790
    if-eqz p2, :cond_15

    .line 791
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 793
    :cond_15
    return-void
.end method

.method private updateHeaderMinute(IZ)V
    .registers 5
    .param p1, "minuteOfHour"    # I
    .param p2, "announce"    # Z

    .line 796
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    .line 798
    if-eqz p2, :cond_11

    .line 799
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->tryAnnounceForAccessibility(Ljava/lang/CharSequence;Z)V

    .line 801
    :cond_11
    return-void
.end method

.method private updateHeaderSeparator()V
    .registers 4

    .line 812
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 813
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_9

    const-string v1, "Hm"

    goto :goto_b

    :cond_9
    const-string v1, "hm"

    .line 812
    :goto_b
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->getHourMinSeparatorFromPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "separatorText":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v2, v1}, Landroid/widget/TextInputTimePickerView;->updateSeparator(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private updateHourFormat()V
    .registers 11

    .line 309
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    .line 310
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_9

    const-string v1, "Hm"

    goto :goto_b

    :cond_9
    const-string v1, "hm"

    .line 309
    :goto_b
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 312
    .local v1, "lengthPattern":I
    const/4 v2, 0x0

    .line 313
    .local v2, "showLeadingZero":Z
    const/4 v3, 0x0

    .line 315
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    const/16 v5, 0x48

    const/16 v6, 0x4b

    if-ge v4, v1, :cond_3e

    .line 316
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 317
    .local v7, "c":C
    if-eq v7, v5, :cond_30

    const/16 v8, 0x68

    if-eq v7, v8, :cond_30

    if-eq v7, v6, :cond_30

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_2d

    goto :goto_30

    .line 315
    .end local v7    # "c":C
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 318
    .restart local v7    # "c":C
    :cond_30
    :goto_30
    move v3, v7

    .line 319
    add-int/lit8 v8, v4, 0x1

    if-ge v8, v1, :cond_3e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3e

    .line 320
    const/4 v2, 0x1

    .line 326
    .end local v4    # "i":I
    .end local v7    # "c":C
    :cond_3e
    iput-boolean v2, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    .line 327
    const/4 v4, 0x1

    if-eq v3, v6, :cond_48

    if-ne v3, v5, :cond_46

    goto :goto_48

    :cond_46
    const/4 v5, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    move v5, v4

    :goto_49
    iput-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 330
    xor-int/2addr v4, v5

    .line 331
    .local v4, "minHour":I
    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v5, :cond_53

    const/16 v5, 0x17

    goto :goto_55

    :cond_53
    const/16 v5, 0xb

    :goto_55
    add-int/2addr v5, v4

    .line 332
    .local v5, "maxHour":I
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/NumericTextView;->setRange(II)V

    .line 333
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    iget-boolean v7, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatShowLeadingZero:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/NumericTextView;->setShowLeadingZeroes(Z)V

    .line 335
    iget-object v6, p0, Landroid/widget/TimePickerClockDelegate;->mLocale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "digits":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 337
    .local v7, "maxCharLength":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6e
    const/16 v9, 0xa

    if-ge v8, v9, :cond_7f

    .line 338
    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 337
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 340
    .end local v8    # "i":I
    :cond_7f
    iget-object v8, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    mul-int/lit8 v9, v7, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/TextInputTimePickerView;->setHourFormat(I)V

    .line 341
    return-void
.end method

.method private updateRadialPicker(I)V
    .registers 6
    .param p1, "index"    # I

    .line 437
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    iget-boolean v3, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RadialTimePickerView;->initialize(IIZ)V

    .line 438
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V

    .line 439
    return-void
.end method

.method private updateTextInputPicker()V
    .registers 7

    .line 432
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    iget v1, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    invoke-direct {p0, v1}, Landroid/widget/TimePickerClockDelegate;->getLocalizedHour(I)I

    move-result v1

    iget v2, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    .line 433
    iget v3, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_12

    const/4 v3, 0x0

    goto :goto_13

    :cond_12
    const/4 v3, 0x1

    :goto_13
    iget-boolean v4, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    iget-boolean v5, p0, Landroid/widget/TimePickerClockDelegate;->mHourFormatStartsAtZero:Z

    .line 432
    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextInputTimePickerView;->updateTextInputValues(IIIZZ)V

    .line 434
    return-void
.end method

.method private updateUI(I)V
    .registers 4
    .param p1, "index"    # I

    .line 421
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderAmPm()V

    .line 422
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderHour(IZ)V

    .line 423
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHeaderSeparator()V

    .line 424
    iget v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentMinute:I

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerClockDelegate;->updateHeaderMinute(IZ)V

    .line 425
    invoke-direct {p0, p1}, Landroid/widget/TimePickerClockDelegate;->updateRadialPicker(I)V

    .line 426
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateTextInputPicker()V

    .line 428
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->invalidate()V

    .line 429
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 677
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerClockDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public getAmView()Landroid/view/View;
    .registers 2

    .line 718
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    .line 657
    const/4 v0, -0x1

    return v0
.end method

.method public getHour()I
    .registers 4

    .line 562
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 563
    .local v0, "currentHour":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_b

    .line 564
    return v0

    .line 567
    :cond_b
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->getAmOrPm()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 568
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    return v1

    .line 570
    :cond_19
    rem-int/lit8 v1, v0, 0xc

    return v1
.end method

.method public getHourView()Landroid/view/View;
    .registers 2

    .line 704
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public getMinute()I
    .registers 2

    .line 609
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method public getMinuteView()Landroid/view/View;
    .registers 2

    .line 711
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    return-object v0
.end method

.method public getPmView()Landroid/view/View;
    .registers 2

    .line 725
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public is24Hour()Z
    .registers 2

    .line 636
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 651
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 683
    const/4 v0, 0x1

    .line 684
    .local v0, "flags":I
    iget-boolean v1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eqz v1, :cond_8

    .line 685
    or-int/lit16 v0, v0, 0x80

    goto :goto_a

    .line 687
    :cond_8
    or-int/lit8 v0, v0, 0x40

    .line 690
    :goto_a
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 691
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 693
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 694
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 693
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, "selectedTime":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v2}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v2

    if-nez v2, :cond_37

    .line 696
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectHours:Ljava/lang/String;

    goto :goto_39

    :cond_37
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate;->mSelectMinutes:Ljava/lang/String;

    .line 697
    .local v2, "selectionMode":Ljava/lang/String;
    :goto_39
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 668
    instance-of v0, p1, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    if-eqz v0, :cond_1f

    .line 669
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    .line 670
    .local v0, "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getMinute()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->is24HourMode()Z

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;->getCurrentItemShowing()I

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/widget/TimePickerClockDelegate;->initialize(IIZI)V

    .line 671
    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v1}, Landroid/widget/RadialTimePickerView;->invalidate()V

    .line 673
    .end local v0    # "ss":Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;
    :cond_1f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .registers 9
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 662
    new-instance v6, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v3

    .line 663
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->is24Hour()Z

    move-result v4

    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->getCurrentItemShowing()I

    move-result v5

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePicker$AbstractTimePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIZI)V

    .line 662
    return-object v6
.end method

.method public setDate(II)V
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .line 518
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    .line 519
    invoke-direct {p0, p2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    .line 521
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->onTimeChanged()V

    .line 522
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 641
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mHourView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    .line 642
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mMinuteView:Lcom/android/internal/widget/NumericTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumericTextView;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 644
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 645
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setEnabled(Z)V

    .line 646
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIsEnabled:Z

    .line 647
    return-void
.end method

.method public setHour(I)V
    .registers 4
    .param p1, "hour"    # I

    .line 529
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/widget/TimePickerClockDelegate;->setHourInternal(IIZZ)V

    .line 530
    return-void
.end method

.method public setIs24Hour(Z)V
    .registers 3
    .param p1, "is24Hour"    # Z

    .line 620
    iget-boolean v0, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    if-eq v0, p1, :cond_18

    .line 621
    iput-boolean p1, p0, Landroid/widget/TimePickerClockDelegate;->mIs24Hour:Z

    .line 622
    invoke-virtual {p0}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePickerClockDelegate;->mCurrentHour:I

    .line 624
    invoke-direct {p0}, Landroid/widget/TimePickerClockDelegate;->updateHourFormat()V

    .line 625
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mRadialTimePickerView:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentItemShowing()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/TimePickerClockDelegate;->updateUI(I)V

    .line 627
    :cond_18
    return-void
.end method

.method public setMinute(I)V
    .registers 4
    .param p1, "minute"    # I

    .line 579
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/TimePickerClockDelegate;->setMinuteInternal(IIZ)V

    .line 580
    return-void
.end method

.method public validateInput()Z
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate;->mTextInputPickerView:Landroid/widget/TextInputTimePickerView;

    invoke-virtual {v0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    move-result v0

    return v0
.end method
