.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$OnQueryTextListener;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$UpdatableTouchDelegate;,
        Landroid/widget/SearchView$SavedState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"

.field private static final SEM_AUTHORITY_SVI_APP:Ljava/lang/String; = "com.samsung.android.honeyboard.provider.VoiceLanguageListProvider"

.field private static final SEM_KEY_SVI_APP_LOCALE:Ljava/lang/String; = "is_honeyvoice_locale_supported"

.field private static final SEM_SVI_ACTION:Ljava/lang/String; = "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

.field private static final SEM_SVI_PACKAGE:Ljava/lang/String; = "com.samsung.android.honeyboard"

.field private static final SEM_SVI_VERSION_SUPPORTING_SEARCH_QUERY:I = 0xd1cf6d1

.field private static final SHOW_IME_WITH_HARDKEY:I = 0x1

.field private static final TW_SEARCH_ICON_RES_ID:I = 0x1080bdb


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private final mBackButton:Landroid/widget/ImageView;

.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mContext:Landroid/content/Context;

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mIsNight:Z

.field private mIsPenSupport:Z

.field private mMaxWidth:I

.field private final mMoreButton:Landroid/widget/ImageView;

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSVISearchIntent:Landroid/content/Intent;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private final mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mThemeIsDeviceDefault:Z

.field private mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUseSVI:Z

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCloseButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGoButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnQueryTextFocusChangeListener(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchSrcTextView(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchable(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestionsAdapter(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThemeIsDeviceDefault(Landroid/widget/SearchView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVoiceButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$madjustDropDownSizeAndPosition(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mforceSuggestionQuery(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchQuerySearch(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCloseClicked(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monItemClicked(Landroid/widget/SearchView;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monItemSelected(Landroid/widget/SearchView;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onItemSelected(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSearchClicked(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSubmitQuery(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSuggestionsKey(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monTextChanged(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monVoiceClicked(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFocusedState(Landroid/widget/SearchView;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 406
    const v0, 0x1010480

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 407
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 411
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 414
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    .line 146
    const/4 v9, 0x2

    new-array v0, v9, [I

    iput-object v0, v7, Landroid/widget/SearchView;->mTemp:[I

    .line 147
    new-array v0, v9, [I

    iput-object v0, v7, Landroid/widget/SearchView;->mTemp2:[I

    .line 198
    const/4 v10, 0x0

    iput-boolean v10, v7, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    .line 199
    iput-boolean v10, v7, Landroid/widget/SearchView;->mIsPenSupport:Z

    .line 208
    iput-boolean v10, v7, Landroid/widget/SearchView;->mUseSVI:Z

    .line 209
    const/4 v0, 0x0

    iput-object v0, v7, Landroid/widget/SearchView;->mSVISearchIntent:Landroid/content/Intent;

    .line 315
    new-instance v0, Landroid/widget/SearchView$1;

    invoke-direct {v0, v7}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Landroid/widget/SearchView$2;

    invoke-direct {v0, v7}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 331
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, v7, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1246
    new-instance v11, Landroid/widget/SearchView$5;

    invoke-direct {v11, v7}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    iput-object v11, v7, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1296
    new-instance v0, Landroid/widget/SearchView$6;

    invoke-direct {v0, v7}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1549
    new-instance v12, Landroid/widget/SearchView$7;

    invoke-direct {v12, v7}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    iput-object v12, v7, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1888
    new-instance v13, Landroid/widget/SearchView$8;

    invoke-direct {v13, v7}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    iput-object v13, v7, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1900
    new-instance v14, Landroid/widget/SearchView$9;

    invoke-direct {v14, v7}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    iput-object v14, v7, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 2190
    new-instance v0, Landroid/widget/SearchView$10;

    invoke-direct {v0, v7}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 416
    sget-object v0, Lcom/android/internal/R$styleable;->SearchView:[I

    move-object/from16 v15, p2

    move/from16 v6, p3

    move/from16 v5, p4

    invoke-virtual {v8, v15, v0, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 418
    .local v4, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->SearchView:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    .end local v4    # "a":Landroid/content/res/TypedArray;
    .local v16, "a":Landroid/content/res/TypedArray;
    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SearchView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 420
    const-string v0, "layout_inflater"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 422
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109012b

    move-object/from16 v2, v16

    .end local v16    # "a":Landroid/content/res/TypedArray;
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 424
    .local v1, "layoutResId":I
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 427
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 428
    .local v4, "themeValue":Landroid/util/TypedValue;
    iput-object v8, v7, Landroid/widget/SearchView;->mContext:Landroid/content/Context;

    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x11200d7

    invoke-virtual {v5, v6, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 430
    iget v5, v4, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_b0

    move v5, v3

    goto :goto_b1

    :cond_b0
    move v5, v10

    :goto_b1
    iput-boolean v5, v7, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x20

    if-ne v5, v6, :cond_c5

    move v5, v3

    goto :goto_c6

    :cond_c5
    move v5, v10

    :goto_c6
    iput-boolean v5, v7, Landroid/widget/SearchView;->mIsNight:Z

    .line 435
    const v5, 0x102051d

    invoke-virtual {v7, v5}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView$SearchAutoComplete;

    iput-object v5, v7, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    .line 436
    invoke-virtual {v5, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    .line 438
    const v6, 0x1020518

    invoke-virtual {v7, v6}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 439
    const v6, 0x102051c

    invoke-virtual {v7, v6}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v7, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 440
    const v9, 0x10205f5

    invoke-virtual {v7, v9}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 441
    const v3, 0x1020516

    invoke-virtual {v7, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v7, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 442
    const v10, 0x1020519

    invoke-virtual {v7, v10}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v7, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 443
    move-object/from16 v17, v0

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x1020517

    invoke-virtual {v7, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 444
    move-object/from16 v18, v4

    .end local v4    # "themeValue":Landroid/util/TypedValue;
    .local v18, "themeValue":Landroid/util/TypedValue;
    const v4, 0x102051f

    invoke-virtual {v7, v4}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v7, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 445
    const v8, 0x102051a

    invoke-virtual {v7, v8}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 447
    const v15, 0x102051b

    invoke-virtual {v7, v15}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v7, Landroid/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    .line 448
    move-object/from16 v19, v15

    const v15, 0x1020513

    invoke-virtual {v7, v15}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v7, Landroid/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    .line 452
    move-object/from16 v20, v15

    const/16 v15, 0xc

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 453
    const/16 v15, 0xd

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 456
    const/16 v9, 0x8

    move-object/from16 v21, v6

    const/4 v15, 0x0

    invoke-virtual {v2, v9, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v7, Landroid/widget/SearchView;->mSearchIconResId:I

    .line 457
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    const/4 v15, 0x7

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    const/4 v15, 0x6

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    const/16 v15, 0x9

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 464
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 468
    const/16 v15, 0xe

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v22

    if-eqz v22, :cond_195

    .line 469
    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_19b

    .line 471
    :cond_195
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v7, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 475
    :goto_19b
    const/16 v9, 0xb

    const v15, 0x109012a

    invoke-virtual {v2, v9, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v7, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    .line 477
    const/16 v9, 0xa

    const/4 v15, 0x0

    invoke-virtual {v2, v9, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v7, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 479
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    invoke-virtual {v5, v11}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v9, v7, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v9}, Landroid/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 486
    invoke-virtual {v5, v12}, Landroid/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 487
    invoke-virtual {v5, v13}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 488
    invoke-virtual {v5, v14}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 489
    iget-object v9, v7, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v9}, Landroid/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 492
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {v10}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 496
    const v9, 0x10901c1

    if-ne v1, v9, :cond_205

    .line 497
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v15, v19

    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v11, v20

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_209

    .line 496
    :cond_205
    move-object/from16 v15, v19

    move-object/from16 v11, v20

    .line 503
    :goto_209
    new-instance v9, Landroid/widget/SearchView$3;

    invoke-direct {v9, v7}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v5, v9}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 511
    const/4 v9, 0x4

    const/4 v12, 0x1

    invoke-virtual {v2, v9, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 513
    const/4 v9, -0x1

    invoke-virtual {v2, v12, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 514
    .local v13, "maxWidth":I
    if-eq v13, v9, :cond_224

    .line 515
    invoke-virtual {v7, v13}, Landroid/widget/SearchView;->setMaxWidth(I)V

    .line 518
    :cond_224
    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v7, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 519
    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v7, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 521
    const/4 v12, 0x3

    invoke-virtual {v2, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 522
    .local v12, "imeOptions":I
    if-eq v12, v9, :cond_23d

    .line 523
    invoke-virtual {v7, v12}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 526
    :cond_23d
    const/4 v14, 0x2

    invoke-virtual {v2, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 527
    .local v14, "inputType":I
    if-eq v14, v9, :cond_247

    .line 528
    invoke-virtual {v7, v14}, Landroid/widget/SearchView;->setInputType(I)V

    .line 531
    :cond_247
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SearchView;->getFocusable()I

    move-result v9

    move/from16 v16, v1

    .end local v1    # "layoutResId":I
    .local v16, "layoutResId":I
    const/16 v1, 0x10

    if-ne v9, v1, :cond_255

    .line 532
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/SearchView;->setFocusable(I)V

    .line 536
    :cond_255
    iget-boolean v1, v7, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v1, :cond_39b

    if-nez v6, :cond_39b

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x1080bdb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 540
    iget-object v1, v7, Landroid/widget/SearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 542
    .local v1, "resources":Landroid/content/res/Resources;
    iget-boolean v6, v7, Landroid/widget/SearchView;->mIsNight:Z

    if-nez v6, :cond_312

    .line 543
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_2cf

    .line 544
    const v6, 0x10603cd

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setTextColor(I)V

    .line 545
    const v6, 0x10603c9

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 546
    const v6, 0x10603cb

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 547
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 548
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 549
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 550
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 551
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_39b

    .line 553
    :cond_2cf
    const v6, 0x106049b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setTextColor(I)V

    .line 554
    const v6, 0x1060495

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 555
    const v6, 0x1060499

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 556
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 557
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 558
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 559
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 560
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_39b

    .line 563
    :cond_312
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_35a

    .line 564
    const v6, 0x10603cc

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setTextColor(I)V

    .line 565
    const v6, 0x10603c8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 566
    const v6, 0x10603ca

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 567
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 568
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 569
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 570
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 571
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_39b

    .line 573
    :cond_35a
    const v6, 0x106049c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setTextColor(I)V

    .line 574
    const v6, 0x1060496

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setHintTextColor(I)V

    .line 575
    const v6, 0x106049a

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 576
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 577
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 578
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 579
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 580
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 585
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_39b
    :goto_39b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 589
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 590
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v4, "web_search"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 594
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 597
    if-eqz v0, :cond_3d4

    .line 598
    new-instance v3, Landroid/widget/SearchView$4;

    invoke-direct {v3, v7}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 607
    :cond_3d4
    iget-boolean v0, v7, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v7, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 608
    invoke-direct/range {p0 .. p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 610
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_SEARCHVIEW_USE_SVI:Z

    if-eqz v0, :cond_3ed

    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "samsung.honeyboard.honeyvoice.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Landroid/widget/SearchView;->mSVISearchIntent:Landroid/content/Intent;

    .line 612
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 616
    :cond_3ed
    iget-boolean v0, v7, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_3f4

    .line 617
    invoke-direct/range {p0 .. p0}, Landroid/widget/SearchView;->semCheckMaxFontSize()V

    .line 620
    :cond_3f4
    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .registers 9

    .line 1834
    iget-object v0, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_76

    .line 1835
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1836
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1837
    .local v1, "anchorPadding":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1838
    .local v2, "dropDownPadding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isLayoutRtl()Z

    move-result v3

    .line 1839
    .local v3, "isLayoutRtl":Z
    iget-boolean v4, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_35

    .line 1841
    nop

    .line 1840
    const v4, 0x1050154

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1841
    const v5, 0x1050155

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_36

    .line 1842
    :cond_35
    const/4 v4, 0x0

    :goto_36
    nop

    .line 1844
    .local v4, "iconOffset":I
    iget-boolean v5, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v5, :cond_3d

    .line 1845
    const/4 v4, 0x0

    .line 1846
    const/4 v1, 0x0

    .line 1849
    :cond_3d
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1851
    if-eqz v3, :cond_4c

    .line 1852
    iget v5, v2, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    .local v5, "offset":I
    goto :goto_51

    .line 1854
    .end local v5    # "offset":I
    :cond_4c
    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    sub-int v5, v1, v5

    .line 1856
    .restart local v5    # "offset":I
    :goto_51
    iget-object v6, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1857
    iget-object v6, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    sub-int/2addr v6, v1

    .line 1859
    .local v6, "width":I
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1861
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 1862
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->showDropDown()V

    .line 1866
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "anchorPadding":I
    .end local v2    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "iconOffset":I
    .end local v5    # "offset":I
    .end local v6    # "width":I
    :cond_76
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .line 2019
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2020
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2024
    if-eqz p2, :cond_f

    .line 2025
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2027
    :cond_f
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2028
    if-eqz p4, :cond_1f

    .line 2029
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2031
    :cond_1f
    if-eqz p3, :cond_26

    .line 2032
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2034
    :cond_26
    iget-object v1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    .line 2035
    const-string v2, "app_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2037
    :cond_2f
    if-eqz p5, :cond_3b

    .line 2038
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2039
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2041
    :cond_3b
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2042
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 14
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 2137
    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "suggest_intent_action"

    invoke-static {p1, v1}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2139
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 2140
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 2142
    :cond_11
    if-nez v1, :cond_16

    .line 2143
    const-string v2, "android.intent.action.SEARCH"

    move-object v1, v2

    .line 2147
    :cond_16
    const-string/jumbo v2, "suggest_intent_data"

    invoke-static {p1, v2}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2148
    .local v2, "data":Ljava/lang/String;
    if-nez v2, :cond_26

    .line 2149
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2152
    :cond_26
    if-eqz v2, :cond_4f

    .line 2153
    const-string/jumbo v3, "suggest_intent_data_id"

    invoke-static {p1, v3}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2154
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_4f

    .line 2155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v9, v2

    goto :goto_50

    .line 2158
    .end local v3    # "id":Ljava/lang/String;
    :cond_4f
    move-object v9, v2

    .end local v2    # "data":Ljava/lang/String;
    .local v9, "data":Ljava/lang/String;
    :goto_50
    if-nez v9, :cond_54

    move-object v4, v0

    goto :goto_59

    :cond_54
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    .line 2160
    .local v4, "dataUri":Landroid/net/Uri;
    :goto_59
    const-string/jumbo v2, "suggest_intent_query"

    invoke-static {p1, v2}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2161
    .local v6, "query":Ljava/lang/String;
    const-string/jumbo v2, "suggest_intent_extra_data"

    invoke-static {p1, v2}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2163
    .local v5, "extraData":Ljava/lang/String;
    move-object v2, p0

    move-object v3, v1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_6f
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6f} :catch_70

    return-object v0

    .line 2164
    .end local v1    # "action":Ljava/lang/String;
    .end local v4    # "dataUri":Landroid/net/Uri;
    .end local v5    # "extraData":Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    :catch_70
    move-exception v1

    .line 2167
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_71
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_75} :catch_76

    .line 2170
    .local v2, "rowNum":I
    goto :goto_79

    .line 2168
    .end local v2    # "rowNum":I
    :catch_76
    move-exception v2

    .line 2169
    .local v2, "e2":Ljava/lang/RuntimeException;
    const/4 v3, -0x1

    move v2, v3

    .line 2171
    .local v2, "rowNum":I
    :goto_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search suggestions cursor at row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchView"

    invoke-static {v4, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2173
    return-object v0
.end method

.method private createSVoiceSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 10
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 2507
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2509
    .local v0, "searchActivity":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2510
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2511
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2518
    .local v2, "pending":Landroid/app/PendingIntent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2519
    .local v3, "queryExtras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v4, :cond_27

    .line 2520
    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2526
    :cond_27
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2528
    .local v4, "voiceIntent":Landroid/content/Intent;
    if-nez v0, :cond_30

    const/4 v5, 0x0

    goto :goto_34

    .line 2529
    :cond_30
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 2528
    :goto_34
    const-string v6, "calling_package"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    const-string v5, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2532
    const-string v5, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2534
    return-object v4
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 15
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 2064
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2069
    .local v0, "searchActivity":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2070
    .local v1, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2071
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2078
    .local v2, "pending":Landroid/app/PendingIntent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2079
    .local v3, "queryExtras":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v4, :cond_27

    .line 2080
    const-string v5, "app_data"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2086
    :cond_27
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2089
    .local v4, "voiceIntent":Landroid/content/Intent;
    const-string v5, "free_form"

    .line 2090
    .local v5, "languageModel":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2091
    .local v6, "prompt":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2092
    .local v7, "language":Ljava/lang/String;
    const/4 v8, 0x1

    .line 2094
    .local v8, "maxResults":I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 2095
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_43

    .line 2096
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2098
    :cond_43
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_51

    .line 2099
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2101
    :cond_51
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_5f

    .line 2102
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2104
    :cond_5f
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_69

    .line 2105
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    .line 2107
    :cond_69
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v4, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2109
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2111
    if-nez v0, :cond_81

    const/4 v10, 0x0

    goto :goto_85

    .line 2112
    :cond_81
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    .line 2111
    :goto_85
    const-string v11, "calling_package"

    invoke-virtual {v4, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v4, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2116
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v4, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2118
    return-object v4
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 7
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .line 2049
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2050
    .local v0, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    .line 2051
    .local v1, "searchActivity":Landroid/content/ComponentName;
    if-nez v1, :cond_d

    const/4 v2, 0x0

    goto :goto_11

    .line 2052
    :cond_d
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 2051
    :goto_11
    const-string v3, "calling_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    return-object v0
.end method

.method private dismissSuggestions()V
    .registers 2

    .line 1593
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1594
    return-void
.end method

.method private forceSuggestionQuery()V
    .registers 2

    .line 2178
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doBeforeTextChanged()V

    .line 2179
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doAfterTextChanged()V

    .line 2180
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 1436
    const/4 v0, 0x0

    .line 1438
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v1

    .line 1439
    .local v1, "column":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 1440
    invoke-static {p0, v1}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1445
    :cond_b
    if-nez v0, :cond_11

    .line 1446
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v0

    .line 1448
    :cond_11
    return-object v0
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 1108
    iget-object v0, p0, Landroid/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1109
    iget-object v0, p0, Landroid/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->getLocationInWindow([I)V

    .line 1110
    iget-object v0, p0, Landroid/widget/SearchView;->mTemp:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroid/widget/SearchView;->mTemp2:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    .line 1111
    .local v2, "top":I
    const/4 v1, 0x0

    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 1112
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1113
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 1453
    iget v0, p0, Landroid/widget/SearchView;->mSearchIconResId:I

    .line 1454
    .local v0, "searchIconResId":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v1, :cond_7

    .line 1455
    return-object p1

    .line 1461
    :cond_7
    iget-boolean v1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_10

    goto :goto_62

    .line 1465
    :cond_10
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 1468
    .local v1, "textSize":I
    iget-boolean v2, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_47

    .line 1469
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1470
    .local v2, "searchIcon":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v1, -0xf

    const/16 v8, -0xf

    invoke-virtual {v2, v5, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1471
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v7, "  "

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1472
    .local v6, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v6, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1473
    new-instance v7, Landroid/text/style/ImageSpan;

    invoke-direct {v7, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7, v4, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1474
    return-object v6

    .line 1476
    .end local v2    # "searchIcon":Landroid/graphics/drawable/Drawable;
    .end local v6    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_47
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1478
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, "   "

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1479
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v6, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x2

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1480
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1481
    return-object v2

    .line 1462
    .end local v1    # "textSize":I
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_62
    :goto_62
    return-object p1
.end method

.method private getPreferredHeight()I
    .registers 3

    .line 1121
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1122
    const v1, 0x1050323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1121
    return v0
.end method

.method private getPreferredWidth()I
    .registers 3

    .line 1116
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1117
    const v1, 0x1050324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1116
    return v0
.end method

.method private hasVoiceSearch()Z
    .registers 5

    .line 1151
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, "testIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1154
    iget-object v0, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    goto :goto_2c

    .line 1155
    :cond_17
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1156
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->WIDGET_SEARCHVIEW_USE_SVI:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, p0, Landroid/widget/SearchView;->mUseSVI:Z

    if-eqz v2, :cond_2a

    .line 1157
    iget-object v0, p0, Landroid/widget/SearchView;->mSVISearchIntent:Landroid/content/Intent;

    goto :goto_2c

    .line 1159
    :cond_2a
    iget-object v0, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 1162
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_40

    .line 1163
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1165
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1

    .line 1168
    .end local v0    # "testIntent":Landroid/content/Intent;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_40
    return v1
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 2183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isSubmitAreaEnabled()Z
    .registers 2

    .line 1172
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isSystemLocaleSupported()Z
    .registers 10

    .line 2592
    const-string v0, "content://com.samsung.android.honeyboard.provider.VoiceLanguageListProvider/is_honeyvoice_locale_supported"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2593
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 2594
    .local v7, "isLocalSupported":I
    const/4 v8, 0x0

    :try_start_8
    iget-object v1, p0, Landroid/widget/SearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2595
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_20

    .line 2596
    nop

    .line 2601
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1f} :catch_44

    .line 2596
    :cond_1f
    return v8

    .line 2598
    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2599
    const-string v2, "is_honeyvoice_locale_supported"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_38

    move v7, v2

    goto :goto_20

    .line 2601
    :cond_32
    if-eqz v1, :cond_37

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_44

    .line 2603
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_37
    goto :goto_5d

    .line 2594
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :catchall_38
    move-exception v2

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "uri":Landroid/net/Uri;
    .end local v7    # "isLocalSupported":I
    .end local p0    # "this":Landroid/widget/SearchView;
    :cond_43
    :goto_43
    throw v2
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_44

    .line 2601
    .end local v1    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v7    # "isLocalSupported":I
    .restart local p0    # "this":Landroid/widget/SearchView;
    :catch_44
    move-exception v1

    .line 2602
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSystemLocaleSupported: exception!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SearchView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    const/4 v1, 0x1

    if-ne v7, v1, :cond_61

    move v8, v1

    :cond_61
    return v8
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1973
    if-nez p1, :cond_3

    .line 1974
    return-void

    .line 1979
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    .line 1982
    goto :goto_24

    .line 1980
    :catch_b
    move-exception v0

    .line 1981
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1983
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :goto_24
    return-void
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .line 1996
    const-string v7, "android.intent.action.SEARCH"

    .line 1997
    .local v7, "action":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1998
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1999
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .registers 7
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1956
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1957
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1959
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1962
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1964
    const/4 v2, 0x1

    return v2

    .line 1966
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method private onCloseClicked()V
    .registers 5

    .line 1598
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1599
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    .line 1600
    iget-boolean v1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_40

    .line 1602
    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1604
    :cond_1b
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1606
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_40

    .line 1610
    :cond_22
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1613
    invoke-virtual {p0}, Landroid/widget/SearchView;->semIsForceHideSoftInput()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1616
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    goto :goto_40

    .line 1618
    :cond_3b
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    .line 1623
    :cond_40
    :goto_40
    return-void
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .registers 6
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .line 1869
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 1870
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    .line 1876
    :cond_c
    return v1

    .line 1871
    :cond_d
    :goto_d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1872
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    .line 1873
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    .line 1874
    const/4 v0, 0x1

    return v0
.end method

.method private onItemSelected(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 1880
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_d

    .line 1881
    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    .line 1885
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 1882
    :cond_d
    :goto_d
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1883
    const/4 v0, 0x1

    return v0
.end method

.method private onSearchClicked()V
    .registers 3

    .line 1654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1655
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1657
    invoke-virtual {p0}, Landroid/widget/SearchView;->semIsForceHideSoftInput()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1660
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    goto :goto_1b

    .line 1662
    :cond_15
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    .line 1665
    :goto_1b
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_22

    .line 1666
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1668
    :cond_22
    return-void
.end method

.method private onSubmitQuery()V
    .registers 5

    .line 1579
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1580
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_31

    .line 1581
    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_1c

    .line 1582
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1583
    :cond_1c
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 1584
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1586
    :cond_29
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    .line 1587
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    .line 1590
    :cond_31
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1363
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1364
    return v1

    .line 1366
    :cond_6
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_b

    .line 1367
    return v1

    .line 1369
    :cond_b
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1372
    const/16 v0, 0x42

    if-eq p2, v0, :cond_9a

    const/16 v0, 0x54

    if-eq p2, v0, :cond_9a

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_9a

    const/16 v0, 0xa0

    if-ne p2, v0, :cond_29

    goto/16 :goto_9a

    .line 1381
    :cond_29
    const/16 v0, 0x15

    if-eq p2, v0, :cond_79

    const/16 v2, 0x16

    if-ne p2, v2, :cond_32

    goto :goto_79

    .line 1397
    :cond_32
    const/16 v0, 0x13

    if-ne p2, v0, :cond_3f

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    if-nez v0, :cond_3f

    .line 1400
    return v1

    .line 1404
    :cond_3f
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1405
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_a6

    .line 1406
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_53

    .line 1407
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a6

    .line 1409
    :cond_53
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v2

    .line 1410
    .local v2, "position":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_a6

    .line 1411
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 1412
    .local v3, "c":Landroid/database/Cursor;
    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 1413
    invoke-static {v3, v0}, Landroid/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v4

    .line 1414
    .local v4, "actionMsg":Ljava/lang/String;
    if-eqz v4, :cond_a6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a6

    .line 1415
    invoke-direct {p0, v2, p2, v4}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1386
    .end local v0    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    .end local v2    # "position":I
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "actionMsg":Ljava/lang/String;
    :cond_79
    :goto_79
    if-ne p2, v0, :cond_7d

    move v0, v1

    goto :goto_83

    .line 1387
    :cond_7d
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v0

    :goto_83
    nop

    .line 1388
    .local v0, "selPoint":I
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1389
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1390
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1391
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 1393
    return v2

    .line 1375
    .end local v0    # "selPoint":I
    :cond_9a
    :goto_9a
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 1376
    .local v0, "position":I
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1421
    .end local v0    # "position":I
    :cond_a6
    return v1
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .line 1561
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1562
    .local v0, "text":Ljava/lang/CharSequence;
    iput-object v0, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1563
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1564
    .local v1, "hasText":Z
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    .line 1565
    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    .line 1566
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    .line 1567
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    .line 1569
    iget-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 1570
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1571
    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_37

    .line 1572
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1576
    :cond_37
    return-void
.end method

.method private onVoiceClicked()V
    .registers 5

    .line 1672
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_5

    .line 1673
    return-void

    .line 1675
    :cond_5
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1678
    .local v0, "searchable":Landroid/app/SearchableInfo;
    :try_start_7
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1679
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1681
    .local v1, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v1    # "webSearchIntent":Landroid/content/Intent;
    goto :goto_41

    .line 1682
    :cond_1b
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1684
    iget-boolean v1, p0, Landroid/widget/SearchView;->mUseSVI:Z

    if-eqz v1, :cond_33

    .line 1686
    iget-object v1, p0, Landroid/widget/SearchView;->mSVISearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/widget/SearchView;->createSVoiceSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1687
    .local v1, "sVoiceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1688
    .end local v1    # "sVoiceIntent":Landroid/content/Intent;
    goto :goto_42

    .line 1689
    :cond_33
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1691
    .local v1, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_40} :catch_43

    goto :goto_42

    .line 1682
    .end local v1    # "appSearchIntent":Landroid/content/Intent;
    :cond_41
    :goto_41
    nop

    .line 1699
    :goto_42
    goto :goto_4b

    .line 1695
    :catch_43
    move-exception v1

    .line 1698
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SearchView"

    const-string v3, "Could not find voice search activity"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_4b
    return-void
.end method

.method private postUpdateFocusedState()V
    .registers 2

    .line 1214
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1215
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 5
    .param p1, "position"    # I

    .line 1923
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1924
    .local v0, "oldQuery":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1925
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_f

    .line 1926
    return-void

    .line 1928
    :cond_f
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1930
    iget-object v2, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1931
    .local v2, "newQuery":Ljava/lang/CharSequence;
    if-eqz v2, :cond_21

    .line 1934
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 1937
    :cond_21
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1939
    .end local v2    # "newQuery":Ljava/lang/CharSequence;
    :goto_24
    goto :goto_28

    .line 1941
    :cond_25
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1943
    :goto_28
    return-void
.end method

.method private semCheckMaxFontSize()V
    .registers 8

    .line 2625
    const v0, 0x3fa66666    # 1.3f

    .line 2626
    .local v0, "maxScale":F
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 2628
    .local v1, "currentFontScale":F
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105056b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2630
    .local v2, "searchSrcTextSize":I
    const v3, 0x3fa66666    # 1.3f

    cmpl-float v4, v1, v3

    const/4 v5, 0x0

    if-lez v4, :cond_31

    .line 2631
    int-to-float v4, v2

    div-float/2addr v4, v1

    .line 2632
    .local v4, "scaleBase":F
    iget-object v6, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    mul-float/2addr v3, v4

    invoke-virtual {v6, v5, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    .line 2633
    .end local v4    # "scaleBase":F
    goto :goto_37

    .line 2634
    :cond_31
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    int-to-float v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setTextSize(IF)V

    .line 2636
    :goto_37
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/CharSequence;

    .line 1990
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1992
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    :cond_10
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1993
    return-void
.end method

.method private updateCloseButton()V
    .registers 6

    .line 1197
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1200
    .local v0, "hasText":Z
    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    .line 1202
    .local v1, "showClose":Z
    :cond_19
    :goto_19
    iget-boolean v3, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_29

    .line 1203
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v4

    :goto_25
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_32

    .line 1205
    :cond_29
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v4

    :goto_2f
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1207
    :goto_32
    iget-object v2, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1208
    .local v2, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_44

    .line 1209
    if-eqz v0, :cond_3f

    sget-object v3, Landroid/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_41

    :cond_3f
    sget-object v3, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_41
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1211
    :cond_44
    return-void
.end method

.method private updateFocusedState()V
    .registers 5

    .line 1218
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 1219
    .local v0, "focused":Z
    if-eqz v0, :cond_b

    sget-object v1, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_d

    :cond_b
    sget-object v1, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 1220
    .local v1, "stateSet":[I
    :goto_d
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1221
    .local v2, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_18

    .line 1222
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1224
    :cond_18
    iget-object v3, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1225
    .local v3, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_23

    .line 1226
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1228
    :cond_23
    invoke-virtual {p0}, Landroid/widget/SearchView;->invalidate()V

    .line 1229
    return-void
.end method

.method private updateQueryHint()V
    .registers 4

    .line 1487
    invoke-virtual {p0}, Landroid/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1488
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_b

    const-string v2, ""

    goto :goto_c

    :cond_b
    move-object v2, v0

    :goto_c
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1489
    return-void
.end method

.method private updateSearchAutoComplete()V
    .registers 7

    .line 1495
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1496
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1497
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1498
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1501
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 1504
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1505
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 1506
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1513
    iget-boolean v1, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-nez v1, :cond_3d

    .line 1514
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1518
    :cond_3d
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1519
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_4a

    .line 1520
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1524
    :cond_4a
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 1525
    new-instance v1, Landroid/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1527
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1528
    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/SuggestionsAdapter;

    .line 1529
    iget-boolean v3, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_70

    const/4 v2, 0x2

    goto :goto_71

    .line 1530
    :cond_70
    nop

    .line 1528
    :goto_71
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1532
    :cond_74
    return-void
.end method

.method private updateSubmitArea()V
    .registers 3

    .line 1187
    const/16 v0, 0x8

    .line 1188
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 1189
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 1190
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    .line 1191
    :cond_18
    const/4 v0, 0x0

    .line 1193
    :cond_19
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 4
    .param p1, "hasText"    # Z

    .line 1177
    const/16 v0, 0x8

    .line 1178
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p1, :cond_18

    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_19

    .line 1180
    :cond_18
    const/4 v0, 0x0

    .line 1182
    :cond_19
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1183
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .registers 8
    .param p1, "collapsed"    # Z

    .line 1127
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconified:Z

    .line 1129
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 1131
    .local v2, "visCollapsed":I
    :goto_a
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 1133
    .local v3, "hasText":Z
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    invoke-direct {p0, v3}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    .line 1135
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_38

    goto :goto_3a

    .line 1141
    :cond_38
    const/4 v0, 0x0

    .local v0, "iconVisibility":I
    goto :goto_3c

    .line 1139
    .end local v0    # "iconVisibility":I
    :cond_3a
    :goto_3a
    const/16 v0, 0x8

    .line 1143
    .restart local v0    # "iconVisibility":I
    :goto_3c
    iget-object v5, p0, Landroid/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1145
    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    .line 1146
    if-nez v3, :cond_47

    move v1, v4

    :cond_47
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    .line 1147
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    .line 1148
    return-void
.end method

.method private updateVoiceButton(Z)V
    .registers 5
    .param p1, "empty"    # Z

    .line 1541
    const/16 v0, 0x8

    .line 1542
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    .line 1543
    const/4 v0, 0x0

    .line 1544
    iget-object v1, p0, Landroid/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1546
    :cond_16
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1547
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .registers 3

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    .line 740
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 741
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 742
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->-$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V

    .line 743
    iput-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    .line 744
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1830
    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeOptions()I
    .registers 2

    .line 685
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    .line 707
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    .line 1034
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    .line 802
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 3

    .line 862
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 863
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .local v0, "hint":Ljava/lang/CharSequence;
    goto :goto_22

    .line 864
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_7
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_20

    .line 865
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "hint":Ljava/lang/CharSequence;
    goto :goto_22

    .line 867
    .end local v0    # "hint":Ljava/lang/CharSequence;
    :cond_20
    iget-object v0, p0, Landroid/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 869
    .restart local v0    # "hint":Ljava/lang/CharSequence;
    :goto_22
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .registers 2

    .line 627
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .registers 2

    .line 623
    iget v0, p0, Landroid/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .registers 2

    .line 1011
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 900
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .registers 2

    .line 939
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isIconifiedByDefault()Z
    .registers 2

    .line 910
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .registers 2

    .line 991
    iget-boolean v0, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .registers 2

    .line 961
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .registers 4

    .line 1754
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1755
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1756
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1757
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1758
    iput-boolean v1, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    .line 1759
    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    .line 1766
    iget-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_5

    return-void

    .line 1768
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    .line 1769
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    .line 1770
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1771
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1773
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2613
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2615
    iget-boolean v0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_a

    .line 2616
    invoke-direct {p0}, Landroid/widget/SearchView;->semCheckMaxFontSize()V

    .line 2618
    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1233
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1234
    iget-object v0, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 1235
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1275
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_6

    .line 1276
    const/4 v0, 0x0

    return v0

    .line 1281
    :cond_6
    invoke-virtual {v0, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1282
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 1283
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1284
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1283
    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1285
    const/4 v1, 0x1

    return v1

    .line 1288
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1089
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1091
    if-eqz p1, :cond_38

    .line 1094
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroid/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1095
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, p5, p3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1097
    iget-object v0, p0, Landroid/widget/SearchView;->mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_31

    .line 1098
    new-instance v0, Landroid/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/SearchView;->mTouchDelegate:Landroid/widget/SearchView$UpdatableTouchDelegate;

    .line 1100
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_38

    .line 1102
    :cond_31
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1105
    :cond_38
    :goto_38
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1040
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1041
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1042
    return-void

    .line 1045
    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1046
    .local v0, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1048
    .local v1, "width":I
    sparse-switch v0, :sswitch_data_6a

    goto :goto_3f

    .line 1059
    :sswitch_16
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3f

    .line 1060
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3f

    .line 1065
    :sswitch_1f
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_24

    goto :goto_28

    :cond_24
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v2

    :goto_28
    move v1, v2

    goto :goto_3f

    .line 1051
    :sswitch_2a
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_33

    .line 1052
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3f

    .line 1053
    :cond_33
    iget-boolean v2, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-nez v2, :cond_3f

    .line 1054
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1068
    :cond_3f
    :goto_3f
    const/high16 v0, 0x40000000    # 2.0f

    .line 1070
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1071
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1073
    .local v3, "height":I
    sparse-switch v2, :sswitch_data_78

    goto :goto_5b

    .line 1078
    :sswitch_4d
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredHeight()I

    move-result v3

    goto :goto_5b

    .line 1075
    :sswitch_52
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredHeight()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1076
    nop

    .line 1081
    :goto_5b
    const/high16 v2, 0x40000000    # 2.0f

    .line 1083
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1084
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1083
    invoke-super {p0, v4, v5}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1085
    return-void

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_1f
        0x40000000 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_78
    .sparse-switch
        -0x80000000 -> :sswitch_52
        0x0 -> :sswitch_4d
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .line 1243
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1244
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1822
    move-object v0, p1

    check-cast v0, Landroid/widget/SearchView$SavedState;

    .line 1823
    .local v0, "ss":Landroid/widget/SearchView$SavedState;
    invoke-virtual {v0}, Landroid/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1824
    iget-boolean v1, v0, Landroid/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1825
    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    .line 1826
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1814
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1815
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/SearchView$SavedState;

    invoke-direct {v1, v0}, Landroid/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1816
    .local v1, "ss":Landroid/widget/SearchView$SavedState;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/SearchView$SavedState;->isIconified:Z

    .line 1817
    return-object v1
.end method

.method onTextFocusChanged()V
    .registers 2

    .line 1703
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1706
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    .line 1707
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1708
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    .line 1710
    :cond_15
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .line 1714
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1716
    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    .line 1717
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 714
    iget-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 716
    :cond_6
    invoke-virtual {p0}, Landroid/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 718
    :cond_d
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 719
    const/4 v0, 0x1

    if-ne p1, v0, :cond_22

    .line 720
    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 721
    .local v2, "found":Landroid/view/View;
    if-eqz v2, :cond_21

    .line 722
    invoke-virtual {v2, v0, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 724
    :cond_21
    return v1

    .line 726
    .end local v2    # "found":Landroid/view/View;
    :cond_22
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 727
    .local v0, "result":Z
    if-eqz v0, :cond_2d

    .line 728
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 730
    :cond_2d
    return v0

    .line 732
    .end local v0    # "result":Z
    :cond_2e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method semIsForceHideSoftInput()Z
    .registers 10

    .line 1636
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1637
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 1638
    .local v1, "mKeyboard":I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1640
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    .line 1641
    .local v3, "viewRootImpl":Landroid/view/ViewRootImpl;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2c

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-eq v6, v5, :cond_2c

    .line 1642
    if-eqz v1, :cond_2b

    move v4, v5

    :cond_2b
    return v4

    .line 1644
    :cond_2c
    const/4 v6, 0x0

    .line 1645
    .local v6, "mShowImeWithHardKeyboard":I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "show_ime_with_hard_keyboard"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1648
    if-eqz v1, :cond_41

    if-eq v6, v5, :cond_41

    move v4, v5

    :cond_41
    return v4
.end method

.method public semIsSviEnabled()Z
    .registers 2

    .line 2588
    iget-boolean v0, p0, Landroid/widget/SearchView;->mUseSVI:Z

    return v0
.end method

.method public semSetOnOverflowMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 310
    iget-object v0, p0, Landroid/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 311
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_7
    return-void
.end method

.method public semSetOnUpButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 296
    iget-object v0, p0, Landroid/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_7
    return-void
.end method

.method public semSetOverflowMenuButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 254
    iget-object v0, p0, Landroid/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 255
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_7
    return-void
.end method

.method public semSetOverflowMenuButtonVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 282
    iget-object v0, p0, Landroid/widget/SearchView;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    :cond_7
    return-void
.end method

.method public semSetSviEnabled(Z)Z
    .registers 10
    .param p1, "enabled"    # Z

    .line 2550
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_SEARCHVIEW_USE_SVI:Z

    const-string v1, "SearchView"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 2551
    const-string/jumbo v0, "semSetSviEnabled: WIDGET_SEARCHVIEW_USE_SVI is false"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    iput-boolean v2, p0, Landroid/widget/SearchView;->mUseSVI:Z

    return v2

    .line 2555
    :cond_10
    iput-boolean p1, p0, Landroid/widget/SearchView;->mUseSVI:Z

    .line 2556
    if-eqz p1, :cond_62

    .line 2558
    :try_start_14
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2559
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "com.samsung.android.honeyboard"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2560
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4

    goto :goto_2b

    :cond_29
    const-wide/16 v4, -0x1

    .line 2562
    .local v4, "version":J
    :goto_2b
    const-wide/32 v6, 0xd1cf6d1

    cmp-long v6, v4, v6

    if-gez v6, :cond_3a

    .line 2563
    const-string/jumbo v6, "semSetSviEnabled: not supported SVI version"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    iput-boolean v2, p0, Landroid/widget/SearchView;->mUseSVI:Z

    .line 2567
    :cond_3a
    invoke-direct {p0}, Landroid/widget/SearchView;->isSystemLocaleSupported()Z

    move-result v6

    if-nez v6, :cond_48

    .line 2568
    const-string/jumbo v6, "semSetSviEnabled: not supported system locale"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iput-boolean v2, p0, Landroid/widget/SearchView;->mUseSVI:Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_48} :catch_49

    .line 2574
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "version":J
    :cond_48
    goto :goto_62

    .line 2571
    :catch_49
    move-exception v0

    .line 2572
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    iput-boolean v2, p0, Landroid/widget/SearchView;->mUseSVI:Z

    .line 2577
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_62
    :goto_62
    iget-boolean v0, p0, Landroid/widget/SearchView;->mUseSVI:Z

    return v0
.end method

.method public semSetUpButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 240
    iget-object v0, p0, Landroid/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_7
    return-void
.end method

.method public semSetUpButtonVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .line 268
    iget-object v0, p0, Landroid/widget/SearchView;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 269
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    :cond_7
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .line 662
    iput-object p1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 663
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 1723
    iget-boolean v0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_a

    .line 1724
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 1726
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1728
    :goto_d
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 4
    .param p1, "resid"    # I

    .line 1732
    iget-boolean v0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_16

    .line 1733
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_19

    .line 1735
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1737
    :goto_19
    return-void
.end method

.method public setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .line 1741
    iget-boolean v0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-eqz v0, :cond_a

    .line 1742
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_d

    .line 1744
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 1746
    :goto_d
    return-void
.end method

.method public setIconified(Z)V
    .registers 2
    .param p1, "iconify"    # Z

    .line 924
    if-eqz p1, :cond_6

    .line 925
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    goto :goto_9

    .line 927
    :cond_6
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    .line 929
    :goto_9
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3
    .param p1, "iconified"    # Z

    .line 885
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 886
    :cond_5
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    .line 887
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 888
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 889
    return-void
.end method

.method public setImeOptions(I)V
    .registers 3
    .param p1, "imeOptions"    # I

    .line 674
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 675
    return-void
.end method

.method public setInputType(I)V
    .registers 3
    .param p1, "inputType"    # I

    .line 697
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 698
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .param p1, "maxpixels"    # I

    .line 1020
    iput p1, p0, Landroid/widget/SearchView;->mMaxWidth:I

    .line 1022
    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    .line 1023
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnCloseListener;

    .line 762
    iput-object p1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 763
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .line 771
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 772
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnQueryTextListener;

    .line 753
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 754
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 792
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 793
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/SearchView$OnSuggestionListener;

    .line 780
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    .line 781
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 5
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .line 814
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 815
    if-eqz p1, :cond_12

    .line 816
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 817
    iput-object p1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 821
    :cond_12
    if-eqz p2, :cond_1d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 822
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    .line 824
    :cond_1d
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .line 837
    iput-object p1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 838
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 839
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 979
    iput-boolean p1, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    .line 980
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v1, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v1, :cond_12

    .line 981
    check-cast v0, Landroid/widget/SuggestionsAdapter;

    .line 982
    if-eqz p1, :cond_e

    const/4 v1, 0x2

    goto :goto_f

    :cond_e
    const/4 v1, 0x1

    .line 981
    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 984
    :cond_12
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 4
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .line 639
    iput-object p1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 640
    if-eqz p1, :cond_a

    .line 641
    invoke-direct {p0}, Landroid/widget/SearchView;->updateSearchAutoComplete()V

    .line 642
    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    .line 645
    :cond_a
    invoke-direct {p0}, Landroid/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 648
    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/widget/SearchView;->mThemeIsDeviceDefault:Z

    if-nez v0, :cond_1e

    .line 651
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 653
    :cond_1e
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 654
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 951
    iput-boolean p1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 952
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    .line 953
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .line 1001
    iput-object p1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1003
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchSrcTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1004
    return-void
.end method
