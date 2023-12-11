.class public Lcom/android/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mHasIconTint:Z

.field private mHasIconTintMode:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconTintList:Landroid/content/res/ColorStateList;

.field private mIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutAlphabeticModifiers:I

.field private mShortcutNumericChar:C

.field private mShortcutNumericModifiers:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 49
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 54
    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 67
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 77
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    .line 78
    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    .line 79
    iput p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    .line 80
    iput p4, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mCategoryOrder:I

    .line 81
    iput p5, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    .line 82
    iput-object p6, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method private applyIconTint()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v1, :cond_26

    .line 238
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 240
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    if-eqz v1, :cond_1b

    .line 241
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 244
    :cond_1b
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    if-eqz v0, :cond_26

    .line 245
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 248
    :cond_26
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .line 338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .line 86
    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericModifiers()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    return v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .line 114
    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    :goto_7
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public invoke()Z
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 308
    return v1

    .line 311
    :cond_c
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_16

    .line 312
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 313
    return v1

    .line 316
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 3

    .line 142
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public isChecked()Z
    .registers 2

    .line 146
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 154
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "resId"    # I

    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "actionView"    # Landroid/view/View;

    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3
    .param p1, "alphaChar"    # C

    .line 158
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 159
    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .registers 4
    .param p1, "alphachar"    # C
    .param p2, "alphaModifiers"    # I

    .line 163
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 164
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 165
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 3
    .param p1, "checkable"    # Z

    .line 169
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 170
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 4
    .param p1, "checked"    # Z

    .line 179
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    if-eqz p1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 180
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 375
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContentDescription:Ljava/lang/CharSequence;

    .line 376
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4
    .param p1, "enabled"    # Z

    .line 184
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    if-eqz p1, :cond_9

    const/16 v1, 0x10

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 185
    return-object p0
.end method

.method public setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 4
    .param p1, "exclusive"    # Z

    .line 174
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_8

    const/4 v1, 0x4

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 175
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "iconRes"    # I

    .line 197
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 198
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    .line 201
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 189
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    .line 192
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    .line 193
    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "iconTintList"    # Landroid/content/res/ColorStateList;

    .line 206
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintList:Landroid/content/res/ColorStateList;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTint:Z

    .line 209
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    .line 211
    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "iconTintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 222
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mHasIconTintMode:Z

    .line 225
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItem;->applyIconTint()V

    .line 227
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 251
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    .line 252
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .param p1, "numericChar"    # C

    .line 256
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 257
    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .registers 4
    .param p1, "numericChar"    # C
    .param p2, "numericModifiers"    # I

    .line 261
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 262
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 263
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .line 370
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 267
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 268
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .line 272
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 273
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 274
    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .registers 6
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C
    .param p3, "numericModifiers"    # I
    .param p4, "alphaModifiers"    # I

    .line 279
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    .line 280
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericModifiers:I

    .line 281
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    .line 282
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticModifiers:I

    .line 283
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2
    .param p1, "show"    # I

    .line 321
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2
    .param p1, "actionEnum"    # I

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    .line 349
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # I

    .line 292
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 293
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 287
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 288
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 297
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 298
    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 386
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTooltipText:Ljava/lang/CharSequence;

    .line 387
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 4
    .param p1, "visible"    # Z

    .line 302
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :cond_8
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    .line 303
    return-object p0
.end method
