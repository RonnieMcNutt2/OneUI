.class public abstract Landroid/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final FONT_SCALE_LARGE:F = 1.3f

.field private static final FONT_SCALE_MEDIUM:F = 1.1f

.field private static final MAX_LOOP_COUNT:I = 0x64

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final SAMSUNG_BASIC_INTERACTION_METADATA_NAME:Ljava/lang/String; = "SamsungBasicInteraction"

.field private static final SAMSUNG_BASIC_INTERACTION_METADATA_VALUE_SEP10:Ljava/lang/String; = "SEP10"

.field private static final SAMSUNG_BASIC_INTERACTION_METADATA_VALUE_SEP11:Ljava/lang/String; = "SEP11"

.field public static final TW_SWITCH_PREFERENCE_LAYOUT:I = 0x2

.field public static final TW_SWITCH_PREFERENCE_LAYOUT_LARGE:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mIsLargeLayout:I

.field private mIsMetaDataInActivity:Z

.field private mLayoutResId:I

.field private mList:Landroid/widget/ListView;

.field private mListOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmList(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbindPreferences(Landroid/preference/PreferenceFragment;)V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 122
    sget-boolean v0, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mIsMetaDataInActivity:Z

    .line 137
    const v0, 0x1090107

    iput v0, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 145
    new-instance v0, Landroid/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$1;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 157
    new-instance v0, Landroid/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$2;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 540
    new-instance v0, Landroid/preference/PreferenceFragment$3;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceFragment$3;-><init>(Landroid/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private bindPreferences()V
    .registers 6

    .line 445
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 446
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_38

    .line 447
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_31

    .line 449
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 450
    .local v2, "titleView":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_31

    .line 451
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 452
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 453
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 455
    :cond_27
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 461
    .end local v2    # "titleView":Landroid/view/View;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_31
    :goto_31
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 463
    .end local v1    # "root":Landroid/view/View;
    :cond_38
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onBindPreferences()V

    .line 464
    return-void
.end method

.method private ensureList()V
    .registers 5

    .line 517
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    .line 518
    return-void

    .line 520
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_3a

    .line 524
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 525
    .local v1, "rawListView":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_32

    .line 530
    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 531
    if-eqz v2, :cond_2a

    .line 536
    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mListOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 537
    iget-object v2, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 538
    return-void

    .line 532
    :cond_2a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 526
    :cond_32
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    .end local v1    # "rawListView":Landroid/view/View;
    :cond_3a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content view not yet created"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .line 559
    .local v1, "tempContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 561
    .local v2, "count":I
    :goto_3
    if-nez v0, :cond_24

    if-eqz v1, :cond_24

    const/16 v3, 0x64

    if-ge v2, v3, :cond_24

    .line 562
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_13

    .line 563
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    goto :goto_21

    .line 565
    :cond_13
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1f

    move-object v3, v1

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_20

    .line 566
    :cond_1f
    const/4 v3, 0x0

    :goto_20
    move-object v1, v3

    .line 568
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 570
    :cond_24
    return-object v0
.end method

.method private postBindPreferences()V
    .registers 3

    .line 440
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 441
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    return-void
.end method

.method private requirePreferenceManager()V
    .registers 3

    .line 434
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_5

    .line 437
    return-void

    .line 435
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 388
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 390
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 391
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .registers 5
    .param p1, "preferencesResId"    # I

    .line 400
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 402
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 403
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 402
    invoke-virtual {v0, v1, p1, v2}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 404
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/CharSequence;

    .line 427
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_6

    .line 428
    const/4 v0, 0x0

    return-object v0

    .line 430
    :cond_6
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 477
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->ensureList()V

    .line 478
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public hasListView()Z
    .registers 6

    .line 498
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 499
    return v1

    .line 501
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, "root":Landroid/view/View;
    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 503
    return v2

    .line 505
    :cond_e
    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 506
    .local v3, "rawListView":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ListView;

    if-nez v4, :cond_1a

    .line 507
    return v2

    .line 509
    :cond_1a
    move-object v4, v3

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 510
    if-nez v4, :cond_22

    .line 511
    return v2

    .line 513
    :cond_22
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 281
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 283
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_a

    .line 284
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->bindPreferences()V

    .line 287
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    .line 289
    if-eqz p1, :cond_20

    .line 290
    const-string v0, "android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 291
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_20

    .line 292
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 293
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_20

    .line 294
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 298
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_20
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 346
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 347
    return-void
.end method

.method protected onBindPreferences()V
    .registers 1

    .line 468
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 185
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_80

    .line 186
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 187
    .local v0, "adapter":Landroid/widget/Adapter;
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x140

    if-gt v1, v2, :cond_17

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v1, v1, v2

    if-gez v1, :cond_26

    :cond_17
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v2, 0x19b

    if-ge v1, v2, :cond_28

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const v2, 0x3fa66666    # 1.3f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_28

    .line 189
    :cond_26
    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x2

    .line 190
    .local v1, "isLargeLayout":I
    :goto_29
    iget-boolean v2, p0, Landroid/preference/PreferenceFragment;->mIsMetaDataInActivity:Z

    if-eqz v2, :cond_80

    instance-of v2, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_80

    iget v2, p0, Landroid/preference/PreferenceFragment;->mIsLargeLayout:I

    if-eq v1, v2, :cond_80

    .line 191
    iput v1, p0, Landroid/preference/PreferenceFragment;->mIsLargeLayout:I

    .line 192
    const/4 v2, 0x0

    .line 193
    .local v2, "hasSwitchPreference":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_39
    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_78

    .line 194
    move-object v4, v0

    check-cast v4, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    .line 195
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v5

    .line 196
    .local v5, "currentLayoutId":I
    instance-of v6, v4, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_75

    .line 197
    const/4 v2, 0x1

    .line 198
    const v6, 0x10901c7

    const v7, 0x10901c6

    if-ne v5, v7, :cond_5e

    .line 199
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_75

    .line 200
    :cond_5e
    if-ne v5, v6, :cond_64

    .line 201
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_75

    .line 202
    :cond_64
    const v6, 0x10901bb

    const v7, 0x10901bc

    if-ne v5, v7, :cond_70

    .line 203
    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_75

    .line 204
    :cond_70
    if-ne v5, v6, :cond_75

    .line 205
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 193
    .end local v4    # "preference":Landroid/preference/Preference;
    .end local v5    # "currentLayoutId":I
    :cond_75
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 209
    .end local v3    # "i":I
    :cond_78
    if-eqz v2, :cond_80

    .line 210
    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 214
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "isLargeLayout":I
    .end local v2    # "hasSwitchPreference":Z
    :cond_80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 220
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    new-instance v0, Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 222
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 225
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceFragment;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 227
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x140

    const/4 v4, 0x1

    if-gt v2, v3, :cond_33

    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3f8ccccd    # 1.1f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_42

    :cond_33
    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v3, 0x19b

    if-ge v2, v3, :cond_44

    iget v2, v1, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_44

    .line 229
    :cond_42
    move v2, v4

    goto :goto_45

    :cond_44
    const/4 v2, 0x2

    :goto_45
    iput v2, p0, Landroid/preference/PreferenceFragment;->mIsLargeLayout:I

    .line 232
    if-eqz v0, :cond_71

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 234
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_71

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_71

    .line 235
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "SamsungBasicInteraction"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "data":Ljava/lang/String;
    const-string v5, "SEP10"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 237
    const-string v5, "SEP11"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 v4, 0x0

    goto :goto_6f

    :cond_6e
    :goto_6e
    nop

    :goto_6f
    iput-boolean v4, p0, Landroid/preference/PreferenceFragment;->mIsMetaDataInActivity:Z

    .line 241
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "data":Ljava/lang/String;
    :cond_71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 247
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    const/4 v2, 0x0

    const v3, 0x1010506

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 252
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    .line 255
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    iget v1, p0, Landroid/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .line 326
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 327
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 328
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 315
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 318
    :cond_8
    iput-object v1, p0, Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;

    .line 319
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 322
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .line 411
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 412
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_19

    .line 413
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p2}, Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 416
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 332
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 335
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_16

    .line 336
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v1, "container":Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 338
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 340
    .end local v1    # "container":Landroid/os/Bundle;
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 302
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 303
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 304
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 308
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 309
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 310
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 311
    return-void
.end method

.method protected onUnbindPreferences()V
    .registers 1

    .line 472
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 262
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceFragment:[I

    const v2, 0x1010506

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 269
    .local v0, "a":Landroid/content/res/TypedArray;
    const v1, 0x102000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 270
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v1, :cond_2c

    .line 271
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 272
    nop

    .line 273
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :cond_2c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    return-void
.end method

.method public semGetListView()Landroid/widget/ListView;
    .registers 2

    .line 492
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .line 363
    iget-object v0, p0, Landroid/preference/PreferenceFragment;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 364
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceFragment;->mHavePrefs:Z

    .line 366
    iget-boolean v0, p0, Landroid/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_17

    .line 367
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;->postBindPreferences()V

    .line 370
    :cond_17
    return-void
.end method
