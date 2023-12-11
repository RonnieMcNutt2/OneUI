.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final SPLIT_BAR_MOVEABLE_AREA_MAX:F = 0.66f

.field private static final SPLIT_BAR_MOVEABLE_AREA_MIN:F = 0.2f

.field private static final SPLIT_BAR_SPLIT_X_IN_FULLVIEW:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"

.field private static mSplitBarMovedLeftWeight:F

.field private static mUserUpdateSplit:Z


# instance fields
.field private mActivityTitle:Ljava/lang/CharSequence;

.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableSplitBar:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadersContainer:Landroid/view/ViewGroup;

.field private mInsideOnCreate:Z

.field private mIsDeviceDefault:Z

.field private mIsMultiPane:Z

.field private mIsRTL:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mUpdateLayoutBySplitChange:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurHeader(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnableSplitBar(Landroid/preference/PreferenceActivity;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeaders(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmUpdateLayoutBySplitChange(Landroid/preference/PreferenceActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindPreferences(Landroid/preference/PreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmSplitBarMovedLeftWeight()F
    .registers 1

    sget v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmSplitBarMovedLeftWeight(F)V
    .registers 1

    sput p0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmUserUpdateSplit(Z)V
    .registers 1

    sput-boolean p0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 232
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    .line 235
    const/4 v0, 0x0

    sput-boolean v0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 120
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 222
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 225
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 227
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 234
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    .line 237
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 253
    new-instance v1, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1092
    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .line 120
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/preference/PreferenceActivity;

    .line 120
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method private bindPreferences()V
    .registers 3

    .line 1806
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1807
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_17

    .line 1808
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1809
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_17

    .line 1810
    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1811
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1814
    :cond_17
    return-void
.end method

.method private postBindPreferences()V
    .registers 3

    .line 1801
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 1802
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1803
    return-void
.end method

.method private requirePreferenceManager()V
    .registers 3

    .line 1830
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_18

    .line 1831
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_10

    .line 1832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1834
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1837
    :cond_18
    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1598
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1600
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1605
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1606
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1608
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    .line 1610
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_27

    .line 1611
    move v2, v3

    goto :goto_29

    .line 1612
    :cond_27
    const/16 v2, 0x1003

    .line 1610
    :goto_29
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1614
    :cond_2c
    const v2, 0x10204ae

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1615
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1617
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_4d

    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4d

    .line 1620
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1621
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1623
    :cond_4d
    return-void

    .line 1601
    .end local v0    # "f":Landroid/app/Fragment;
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1888
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1890
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1891
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .registers 4
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1904
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1906
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1907
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1906
    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1908
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .registers 10
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .line 1666
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_64

    .line 1668
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 1669
    .local v2, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v2, :cond_5d

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v5, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    goto :goto_5d

    .line 1675
    :cond_25
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 1676
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1677
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1679
    :cond_37
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_49

    .line 1680
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1681
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 1683
    :cond_49
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5a

    .line 1684
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1685
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    .end local v2    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_5a
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1671
    .restart local v2    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_5d
    :goto_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1672
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    nop

    .line 1689
    .end local v1    # "j":I
    .end local v2    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1690
    .local v1, "NM":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_73

    .line 1691
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    return-object v2

    .line 1692
    :cond_73
    if-le v1, v2, :cond_ae

    .line 1693
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_76
    if-ge v2, v1, :cond_ae

    .line 1694
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1695
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_8d

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1696
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1697
    return-object v3

    .line 1699
    :cond_8d
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_9c

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1700
    return-object v3

    .line 1702
    :cond_9c
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_ab

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1703
    return-object v3

    .line 1693
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 1707
    .end local v2    # "j":I
    :cond_ae
    const/4 v2, 0x0

    return-object v2
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1934
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 1935
    const/4 v0, 0x0

    return-object v0

    .line 1938
    :cond_6
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .registers 6
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 1777
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1778
    if-eqz p1, :cond_16

    .line 1779
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1780
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1784
    :cond_16
    return-void
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .line 1067
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .registers 2

    .line 1955
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1825
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1872
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_9

    .line 1873
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    .line 1875
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasHeaders()Z
    .registers 2

    .line 1058
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected hasNextButton()Z
    .registers 2

    .line 1951
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public invalidateHeaders()V
    .registers 3

    .line 1176
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1177
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1179
    :cond_e
    return-void
.end method

.method public isMultiPane()Z
    .registers 2

    .line 1075
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 5
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 1320
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_c

    .line 1327
    const/4 v0, 0x1

    return v0

    .line 1321
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1324
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .registers 22
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 1189
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const-string v0, "extra"

    const-string v1, "Error parsing headers"

    const/4 v2, 0x0

    .line 1191
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_9} :catch_1da
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_1cd
    .catchall {:try_start_5 .. :try_end_9} :catchall_1c5

    move/from16 v4, p1

    :try_start_b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v2, v3

    .line 1192
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 1195
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_14
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_20

    if-eq v6, v7, :cond_20

    goto :goto_14

    .line 1200
    :cond_20
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "preference-headers"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18a

    .line 1207
    const/4 v9, 0x0

    .line 1209
    .local v9, "curBundle":Landroid/os/Bundle;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 1210
    .local v10, "outerDepth":I
    :goto_32
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v6, v11

    if-eq v11, v8, :cond_17e

    const/4 v11, 0x3

    if-ne v6, v11, :cond_49

    .line 1211
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_43

    goto :goto_49

    :cond_43
    move-object/from16 v15, p0

    move-object/from16 v7, p2

    goto/16 :goto_184

    .line 1212
    :cond_49
    :goto_49
    if-eq v6, v11, :cond_172

    const/4 v12, 0x4

    if-ne v6, v12, :cond_56

    .line 1213
    move-object/from16 v15, p0

    move-object/from16 v7, p2

    move-object/from16 v18, v9

    goto/16 :goto_178

    .line 1216
    :cond_56
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 1217
    const-string/jumbo v13, "header"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_163

    .line 1218
    new-instance v13, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v13}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1220
    .local v13, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v14, Lcom/android/internal/R$styleable;->PreferenceHeader:[I
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_6b} :catch_1c1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_6b} :catch_1bd
    .catchall {:try_start_b .. :try_end_6b} :catchall_1b9

    move-object/from16 v15, p0

    :try_start_6d
    invoke-virtual {v15, v3, v14}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1222
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v12, -0x1

    invoke-virtual {v14, v8, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v18, v9

    .end local v9    # "curBundle":Landroid/os/Bundle;
    .local v18, "curBundle":Landroid/os/Bundle;
    int-to-long v8, v12

    iput-wide v8, v13, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1225
    invoke-virtual {v14, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 1227
    .local v8, "tv":Landroid/util/TypedValue;
    if-eqz v8, :cond_92

    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_92

    .line 1228
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_8e

    .line 1229
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto :goto_92

    .line 1231
    :cond_8e
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 1234
    :cond_92
    :goto_92
    invoke-virtual {v14, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    move-object v8, v9

    .line 1236
    if-eqz v8, :cond_aa

    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_aa

    .line 1237
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_a6

    .line 1238
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    goto :goto_aa

    .line 1240
    :cond_a6
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 1243
    :cond_aa
    :goto_aa
    const/4 v9, 0x5

    invoke-virtual {v14, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    move-object v8, v9

    .line 1245
    if-eqz v8, :cond_c3

    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_c3

    .line 1246
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_bf

    .line 1247
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    goto :goto_c3

    .line 1249
    :cond_bf
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1252
    :cond_c3
    :goto_c3
    const/4 v9, 0x6

    invoke-virtual {v14, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    move-object v8, v9

    .line 1254
    if-eqz v8, :cond_dc

    iget v9, v8, Landroid/util/TypedValue;->type:I

    if-ne v9, v11, :cond_dc

    .line 1255
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_d8

    .line 1256
    iget v9, v8, Landroid/util/TypedValue;->resourceId:I

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    goto :goto_dc

    .line 1258
    :cond_d8
    iget-object v9, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1261
    :cond_dc
    :goto_dc
    const/4 v9, 0x0

    invoke-virtual {v14, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v13, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1263
    const/4 v9, 0x4

    invoke-virtual {v14, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1265
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1267
    if-nez v18, :cond_f5

    .line 1268
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    goto :goto_f7

    .line 1267
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v18    # "curBundle":Landroid/os/Bundle;
    :cond_f5
    move-object/from16 v9, v18

    .line 1271
    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :goto_f7
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v12

    .line 1272
    .local v12, "innerDepth":I
    :goto_fb
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v6, v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_147

    const/4 v7, 0x3

    if-ne v6, v7, :cond_10c

    .line 1273
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v12, :cond_147

    .line 1274
    :cond_10c
    const/4 v7, 0x3

    if-eq v6, v7, :cond_144

    const/4 v7, 0x4

    if-ne v6, v7, :cond_113

    .line 1275
    goto :goto_144

    .line 1278
    :cond_113
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1279
    .local v17, "innerNodeName":Ljava/lang/String;
    move-object/from16 v7, v17

    .end local v17    # "innerNodeName":Ljava/lang/String;
    .local v7, "innerNodeName":Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12c

    .line 1280
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0, v3, v9}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1281
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_143

    .line 1283
    :cond_12c
    const-string/jumbo v11, "intent"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_140

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v2, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v11

    iput-object v11, v13, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_143

    .line 1287
    :cond_140
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1289
    .end local v7    # "innerNodeName":Ljava/lang/String;
    :goto_143
    nop

    .line 1272
    :cond_144
    :goto_144
    const/4 v7, 0x2

    const/4 v11, 0x3

    goto :goto_fb

    .line 1291
    :cond_147
    invoke-virtual {v9}, Landroid/os/Bundle;->size()I

    move-result v7

    if-lez v7, :cond_151

    .line 1292
    iput-object v9, v13, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;
    :try_end_14f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_14f} :catch_160
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_14f} :catch_15d
    .catchall {:try_start_6d .. :try_end_14f} :catchall_15a

    .line 1293
    const/4 v7, 0x0

    move-object v9, v7

    .line 1296
    :cond_151
    move-object/from16 v7, p2

    :try_start_153
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    const/4 v7, 0x2

    const/4 v8, 0x1

    .end local v8    # "tv":Landroid/util/TypedValue;
    .end local v12    # "innerDepth":I
    .end local v13    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    goto/16 :goto_32

    .line 1307
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v10    # "outerDepth":I
    :catchall_15a
    move-exception v0

    goto/16 :goto_1ca

    .line 1304
    :catch_15d
    move-exception v0

    goto/16 :goto_1d2

    .line 1302
    :catch_160
    move-exception v0

    goto/16 :goto_1df

    .line 1298
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v10    # "outerDepth":I
    :cond_163
    move-object/from16 v15, p0

    move-object/from16 v7, p2

    move-object/from16 v18, v9

    .end local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v18    # "curBundle":Landroid/os/Bundle;
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_16c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_153 .. :try_end_16c} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_16c} :catch_1b5
    .catchall {:try_start_153 .. :try_end_16c} :catchall_1e7

    move-object/from16 v9, v18

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_32

    .line 1212
    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :cond_172
    move-object/from16 v15, p0

    move-object/from16 v7, p2

    move-object/from16 v18, v9

    .line 1210
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .restart local v18    # "curBundle":Landroid/os/Bundle;
    :goto_178
    move-object/from16 v9, v18

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_32

    .end local v18    # "curBundle":Landroid/os/Bundle;
    .restart local v9    # "curBundle":Landroid/os/Bundle;
    :cond_17e
    move-object/from16 v15, p0

    move-object/from16 v7, p2

    move-object/from16 v18, v9

    .line 1307
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .end local v9    # "curBundle":Landroid/os/Bundle;
    .end local v10    # "outerDepth":I
    :goto_184
    if-eqz v2, :cond_189

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1309
    :cond_189
    return-void

    .line 1202
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_18a
    move-object/from16 v15, p0

    move-object/from16 v7, p2

    :try_start_18e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "XML document must start with <preference-headers> tag; found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1204
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    throw v0
    :try_end_1b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18e .. :try_end_1b5} :catch_1b7
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_1b5} :catch_1b5
    .catchall {:try_start_18e .. :try_end_1b5} :catchall_1e7

    .line 1304
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "type":I
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :catch_1b5
    move-exception v0

    goto :goto_1d4

    .line 1302
    :catch_1b7
    move-exception v0

    goto :goto_1e1

    .line 1307
    :catchall_1b9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1ca

    .line 1304
    :catch_1bd
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1d2

    .line 1302
    :catch_1c1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1df

    .line 1307
    :catchall_1c5
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v4, p1

    :goto_1ca
    move-object/from16 v7, p2

    goto :goto_1e8

    .line 1304
    :catch_1cd
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v4, p1

    :goto_1d2
    move-object/from16 v7, p2

    .line 1305
    .local v0, "e":Ljava/io/IOException;
    :goto_1d4
    :try_start_1d4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    throw v3

    .line 1302
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :catch_1da
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v4, p1

    :goto_1df
    move-object/from16 v7, p2

    .line 1303
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1e1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/preference/PreferenceActivity;
    .end local p1    # "resid":I
    .end local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    throw v3
    :try_end_1e7
    .catchall {:try_start_1d4 .. :try_end_1e7} :catchall_1e7

    .line 1307
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/preference/PreferenceActivity;
    .restart local p1    # "resid":I
    .restart local p2    # "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    :catchall_1e7
    move-exception v0

    :goto_1e8
    if-eqz v2, :cond_1ed

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1308
    :cond_1ed
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1413
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1415
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_a

    .line 1416
    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1418
    :cond_a
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 1039
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_3d

    .line 1040
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1043
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1044
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1045
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mActivityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_35

    .line 1046
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1048
    :cond_35
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_40

    .line 1050
    :cond_3d
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 1052
    :goto_40
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 1169
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .line 1475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1477
    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1479
    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1480
    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1481
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1482
    return-object v0
.end method

.method public onContentChanged()V
    .registers 2

    .line 1422
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1424
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_a

    .line 1425
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1427
    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 580
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 584
    sget-object v3, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    const/4 v4, 0x0

    const v5, 0x1120125

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 589
    .local v3, "sa":Landroid/content/res/TypedArray;
    const v5, 0x1090104

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 593
    .local v5, "layoutResId":I
    const v7, 0x10900fe

    invoke-virtual {v3, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 596
    const/4 v7, 0x2

    invoke-virtual {v3, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 601
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 602
    .local v7, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x11200d7

    invoke-virtual {v8, v9, v7, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 603
    iget v8, v7, Landroid/util/TypedValue;->data:I

    if-eqz v8, :cond_41

    move v8, v2

    goto :goto_42

    :cond_41
    move v8, v6

    :goto_42
    iput-boolean v8, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    .line 606
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 608
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 610
    const v8, 0x10203ba

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, v0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 611
    const v9, 0x10204b0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 612
    const v9, 0x1020343

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v9

    .line 614
    .local v9, "hidingHeaders":Z
    if-nez v9, :cond_7a

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v10

    if-nez v10, :cond_78

    goto :goto_7a

    :cond_78
    move v10, v6

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v10, v2

    :goto_7b
    iput-boolean v10, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 615
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, ":android:show_fragment"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 616
    .local v10, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, ":android:show_fragment_args"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 617
    .local v11, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, ":android:show_fragment_title"

    invoke-virtual {v12, v13, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 618
    .local v12, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, ":android:show_fragment_short_title"

    invoke-virtual {v13, v14, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 619
    .local v13, "initialShortTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    iput-object v14, v0, Landroid/preference/PreferenceActivity;->mActivityTitle:Ljava/lang/CharSequence;

    .line 623
    iget-boolean v14, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    const v15, 0x10204b1

    const/16 v8, 0x8

    if-eqz v14, :cond_f1

    iget-boolean v14, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v14, :cond_f1

    .line 624
    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    iput-object v14, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 625
    if-eqz v14, :cond_ff

    .line 626
    iget-object v14, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    .line 627
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 628
    .local v14, "llp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v15, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 629
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 630
    .local v15, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 631
    .local v6, "leftPanelWeight":F
    iget v2, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 632
    .local v2, "rightPanelWeight":F
    add-float v16, v6, v2

    .line 635
    .local v16, "weightSum":F
    sget v4, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    const/16 v17, 0x0

    cmpl-float v17, v4, v17

    if-lez v17, :cond_f0

    .line 636
    iput v4, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 637
    sget v4, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    sub-float v4, v16, v4

    iput v4, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 638
    iget-object v4, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v14}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v4, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    .end local v2    # "rightPanelWeight":F
    .end local v6    # "leftPanelWeight":F
    .end local v14    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "weightSum":F
    :cond_f0
    goto :goto_ff

    .line 644
    :cond_f1
    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 645
    if-eqz v2, :cond_ff

    .line 646
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 647
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 652
    :cond_ff
    :goto_ff
    if-eqz v1, :cond_144

    .line 655
    const-string v2, ":android:headers"

    const-class v4, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 656
    .local v2, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v2, :cond_13b

    .line 657
    iget-object v4, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 658
    const-string v4, ":android:cur_header"

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 660
    .local v4, "curHeader":I
    if-ltz v4, :cond_12d

    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_12d

    .line 661
    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_13a

    .line 662
    :cond_12d
    iget-boolean v6, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v6, :cond_13a

    if-nez v10, :cond_13a

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 665
    .end local v4    # "curHeader":I
    :cond_13a
    :goto_13a
    goto :goto_143

    .line 667
    :cond_13b
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 669
    .end local v2    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :goto_143
    goto :goto_168

    .line 670
    :cond_144
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_14f

    .line 671
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 674
    :cond_14f
    if-eqz v10, :cond_155

    .line 675
    invoke-virtual {v0, v10, v11}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_168

    .line 676
    :cond_155
    iget-boolean v2, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v2, :cond_168

    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_168

    .line 677
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 681
    :cond_168
    :goto_168
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_18d

    .line 682
    new-instance v2, Landroid/preference/PreferenceActivity$HeaderAdapter;

    iget-object v4, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget v6, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    iget-boolean v14, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-direct {v2, v0, v4, v6, v14}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 684
    iget-boolean v2, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v2, :cond_18b

    .line 685
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_18e

    .line 684
    :cond_18b
    const/4 v4, 0x1

    goto :goto_18e

    .line 681
    :cond_18d
    const/4 v4, 0x1

    .line 689
    :goto_18e
    iget-boolean v2, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_1bb

    if-eqz v10, :cond_1bb

    .line 692
    iget-boolean v2, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_1aa

    .line 693
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 694
    .local v2, "crumbsLayout":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 695
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 696
    const/4 v6, 0x0

    iput-object v6, v0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 699
    .end local v2    # "crumbsLayout":Landroid/view/ViewGroup;
    :cond_1aa
    if-eqz v12, :cond_1bb

    .line 701
    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 702
    .local v2, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v13, :cond_1b7

    .line 703
    invoke-virtual {v0, v13}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1b8

    :cond_1b7
    const/4 v6, 0x0

    .line 704
    .local v6, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_1b8
    invoke-virtual {v0, v2, v6}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 708
    .end local v2    # "initialTitleStr":Ljava/lang/CharSequence;
    .end local v6    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_1bb
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1f9

    if-nez v10, :cond_1f9

    .line 711
    iget-boolean v2, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_1cd

    .line 712
    const v2, 0x10901b9

    goto :goto_1d0

    .line 713
    :cond_1cd
    const v2, 0x1090106

    .line 711
    :goto_1d0
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 714
    const v2, 0x10203ba

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 715
    const v2, 0x10204ae

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 716
    new-instance v2, Landroid/preference/PreferenceManager;

    const/16 v6, 0x64

    invoke-direct {v2, v0, v6}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 717
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 718
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    goto :goto_230

    .line 719
    :cond_1f9
    iget-boolean v2, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_221

    .line 721
    if-nez v10, :cond_20a

    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_204

    goto :goto_20a

    .line 724
    :cond_204
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_20f

    .line 722
    :cond_20a
    :goto_20a
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 729
    :goto_20f
    const v2, 0x10204af

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 731
    .local v2, "container":Landroid/view/ViewGroup;
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 732
    .end local v2    # "container":Landroid/view/ViewGroup;
    goto :goto_230

    .line 734
    :cond_221
    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_230

    iget-object v2, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_230

    .line 735
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 740
    :cond_230
    :goto_230
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 741
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "extra_prefs_show_button_bar"

    const/4 v14, 0x0

    invoke-virtual {v2, v6, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2be

    .line 743
    const v6, 0x1020239

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 745
    const v6, 0x102021e

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 746
    .local v6, "backButton":Landroid/widget/Button;
    new-instance v14, Landroid/preference/PreferenceActivity$2;

    invoke-direct {v14, v0}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v6, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    const v14, 0x10205c0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 753
    .local v14, "skipButton":Landroid/widget/Button;
    new-instance v15, Landroid/preference/PreferenceActivity$3;

    invoke-direct {v15, v0}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    const v15, 0x1020439

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    iput-object v15, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 760
    new-instance v4, Landroid/preference/PreferenceActivity$4;

    invoke-direct {v4, v0}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    const-string v4, "extra_prefs_set_next_text"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_299

    .line 769
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, "buttonText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_294

    .line 771
    iget-object v15, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v15, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_299

    .line 774
    :cond_294
    iget-object v15, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v15, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 777
    .end local v4    # "buttonText":Ljava/lang/String;
    :cond_299
    :goto_299
    const-string v4, "extra_prefs_set_back_text"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2b2

    .line 778
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 779
    .restart local v4    # "buttonText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2af

    .line 780
    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2b2

    .line 783
    :cond_2af
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 786
    .end local v4    # "buttonText":Ljava/lang/String;
    :cond_2b2
    :goto_2b2
    const-string v4, "extra_prefs_show_skip"

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2be

    .line 787
    invoke-virtual {v14, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 793
    .end local v6    # "backButton":Landroid/widget/Button;
    .end local v14    # "skipButton":Landroid/widget/Button;
    :cond_2be
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 794
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->isRTL()Z

    move-result v6

    if-eqz v6, :cond_2d1

    invoke-virtual {v4}, Landroid/preference/Preference;->hasRTL()Z

    move-result v6

    if-eqz v6, :cond_2d1

    const/4 v6, 0x1

    goto :goto_2d2

    :cond_2d1
    const/4 v6, 0x0

    :goto_2d2
    iput-boolean v6, v0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    .line 797
    iget-boolean v6, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    if-eqz v6, :cond_2fc

    iget-boolean v6, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v6, :cond_2fc

    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    if-eqz v6, :cond_2fc

    .line 799
    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    if-nez v6, :cond_2eb

    .line 800
    new-instance v6, Landroid/preference/PreferenceActivity$5;

    invoke-direct {v6, v0}, Landroid/preference/PreferenceActivity$5;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v6, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 830
    :cond_2eb
    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    iget-object v8, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v6, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 856
    iget-object v6, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    new-instance v8, Landroid/preference/PreferenceActivity$6;

    invoke-direct {v8, v0}, Landroid/preference/PreferenceActivity$6;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1033
    :cond_2fc
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 1035
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 1352
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1353
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1354
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1356
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_16

    .line 1357
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1359
    :cond_16
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 4

    .line 1135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1136
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1137
    .local v1, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 1138
    return-object v1

    .line 1135
    .end local v1    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1141
    .end local v0    # "i":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one header with a fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .registers 2

    .line 1151
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .registers 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .line 1452
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1453
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_11

    .line 1454
    :cond_8
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_11

    .line 1455
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1457
    :cond_11
    :goto_11
    return-void
.end method

.method public onIsHidingHeaders()Z
    .registers 4

    .line 1124
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .registers 3

    .line 1084
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1086
    .local v0, "preferMultiPane":Z
    if-nez v0, :cond_14

    iget-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    if-eqz v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 1431
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1432
    return-void

    .line 1434
    :cond_7
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1436
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1e

    .line 1437
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1438
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1e

    move-object v1, v0

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v1, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1440
    .end local v0    # "item":Ljava/lang/Object;
    :cond_1e
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1943
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_7

    .line 1944
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1946
    :cond_7
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 568
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 570
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 571
    const/4 v0, 0x1

    return v0

    .line 573
    :cond_e
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .registers 10
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .line 1788
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1789
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1788
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1790
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1918
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Bundle;

    .line 1387
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_18

    .line 1388
    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1389
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_18

    .line 1390
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1391
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_18

    .line 1392
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1393
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1394
    return-void

    .line 1401
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_18
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1403
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v0, :cond_26

    .line 1405
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_26

    .line 1406
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1409
    :cond_26
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1363
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1365
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 1366
    const-string v0, ":android:headers"

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1367
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_23

    .line 1368
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1369
    .local v0, "index":I
    if-ltz v0, :cond_23

    .line 1370
    const-string v1, ":android:cur_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1375
    .end local v0    # "index":I
    :cond_23
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_3a

    .line 1376
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1377
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_3a

    .line 1378
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1379
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1380
    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1383
    .end local v0    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_3a
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 1343
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1345
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_a

    .line 1346
    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 1348
    :cond_a
    return-void
.end method

.method protected semSetMultiPane(Z)V
    .registers 2
    .param p1, "isMultiPane"    # Z

    .line 1102
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    .line 1103
    return-void
.end method

.method public setEnableSplitBar(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 1112
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1113
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 1335
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1336
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1339
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 1570
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_7

    .line 1571
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1573
    :cond_7
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1849
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1851
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 1852
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1853
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1855
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1d

    .line 1856
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1859
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1d
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1576
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1577
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1578
    .local v0, "index":I
    if-ltz v0, :cond_13

    .line 1579
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1a

    .line 1581
    :cond_13
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 1583
    :goto_1a
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1584
    return-void
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .registers 4
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1587
    if-eqz p1, :cond_26

    .line 1588
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1589
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_14

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1590
    :cond_14
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1591
    :cond_1a
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1592
    .end local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_2e

    .line 1593
    :cond_26
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1595
    :goto_2e
    return-void
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .line 1528
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_42

    .line 1529
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1532
    .local v0, "crumbs":Landroid/view/View;
    :try_start_b
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_10} :catch_3d

    .line 1536
    nop

    .line 1537
    if-nez v1, :cond_19

    .line 1538
    if-eqz p1, :cond_18

    .line 1539
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1541
    :cond_18
    return-void

    .line 1543
    :cond_19
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v2, :cond_31

    .line 1544
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1546
    const v1, 0x102022d

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1547
    .local v1, "bcSection":Landroid/view/View;
    if-eqz v1, :cond_2e

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1550
    .end local v1    # "bcSection":Landroid/view/View;
    :cond_31
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1551
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    goto :goto_42

    .line 1533
    :catch_3d
    move-exception v1

    .line 1534
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1535
    return-void

    .line 1553
    .end local v0    # "crumbs":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_42
    :goto_42
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4e

    .line 1554
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_59

    .line 1556
    :cond_4e
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1557
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1559
    :goto_59
    return-void
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .registers 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .line 1718
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1719
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x10204ae

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1720
    if-eqz p2, :cond_1b

    .line 1721
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1722
    const-string v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_20

    .line 1724
    :cond_1b
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1726
    :goto_20
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1727
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .registers 10
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .line 1750
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1751
    .local v0, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_9

    .line 1752
    invoke-virtual {v0, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1754
    :cond_9
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1755
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x10204ae

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1756
    if-eqz p3, :cond_1d

    .line 1757
    invoke-virtual {v1, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    goto :goto_22

    .line 1758
    :cond_1d
    if-eqz p4, :cond_22

    .line 1759
    invoke-virtual {v1, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 1761
    :cond_22
    :goto_22
    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1762
    const-string v2, ":android:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1763
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1764
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .registers 12
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .line 1491
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1492
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .registers 8
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .line 1514
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1515
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_a

    .line 1516
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 1518
    :cond_a
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1520
    :goto_d
    return-void
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .registers 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .line 1651
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_f

    .line 1654
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_1d

    .line 1657
    :cond_f
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 1660
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1661
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1663
    :goto_1d
    return-void

    .line 1658
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1633
    const/4 v0, 0x0

    .line 1634
    .local v0, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1635
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1636
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1637
    goto :goto_27

    .line 1634
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1640
    .end local v1    # "i":I
    :cond_27
    :goto_27
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1641
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1642
    return-void
.end method
