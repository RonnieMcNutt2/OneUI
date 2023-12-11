.class public Lcom/android/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private findItemIndex(I)I
    .registers 6
    .param p1, "id"    # I

    .line 132
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 133
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_19

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 136
    return v2

    .line 134
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 140
    .end local v2    # "i":I
    :cond_19
    const/4 v2, -0x1

    return v2
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 167
    .local v0, "qwerty":Z
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 168
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 169
    .local v2, "itemCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    .line 170
    .local v3, "modifierState":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v2, :cond_3f

    .line 171
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 172
    .local v5, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    if-eqz v0, :cond_1c

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_20

    .line 173
    :cond_1c
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v6

    :goto_20
    nop

    .line 175
    .local v6, "shortcut":C
    if-eqz v0, :cond_28

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticModifiers()I

    move-result v7

    goto :goto_2c

    :cond_28
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericModifiers()I

    move-result v7

    .line 176
    .local v7, "shortcutModifiers":I
    :goto_2c
    const v8, 0x1100f

    and-int v9, v3, v8

    and-int/2addr v8, v7

    if-ne v9, v8, :cond_36

    const/4 v8, 0x1

    goto :goto_37

    :cond_36
    const/4 v8, 0x0

    .line 178
    .local v8, "is_modifiers_exact_match":Z
    :goto_37
    if-ne p1, v6, :cond_3c

    if-eqz v8, :cond_3c

    .line 179
    return-object v5

    .line 170
    .end local v5    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    .end local v6    # "shortcut":C
    .end local v7    # "shortcutModifiers":I
    .end local v8    # "is_modifiers_exact_match":Z
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 182
    .end local v4    # "i":I
    :cond_3f
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "titleRes"    # I

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 67
    new-instance v7, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 69
    .local v0, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 24
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 76
    move-object v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 77
    .local v2, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 78
    const/4 v3, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    invoke-virtual {v2, v4, v1, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 79
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_19

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 81
    .local v3, "N":I
    :cond_19
    and-int/lit8 v7, p7, 0x1

    if-nez v7, :cond_20

    .line 82
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/view/menu/ActionMenu;->removeGroup(I)V

    .line 85
    :cond_20
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_21
    if-ge v7, v3, :cond_71

    .line 86
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 87
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    .line 88
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_31

    move-object v10, v5

    goto :goto_35

    :cond_31
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, v1, v10

    :goto_35
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 89
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual {p0, v11, v12, v13, v10}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    .line 93
    invoke-virtual {v8, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-interface {v10, v14}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    .line 94
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    .line 95
    .local v10, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_6e

    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v14, :cond_6e

    .line 96
    iget v14, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v10, p8, v14

    .line 85
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    .end local v10    # "item":Landroid/view/MenuItem;
    :cond_6e
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_71
    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    .line 100
    .end local v7    # "i":I
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3
    .param p1, "titleRes"    # I

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    return-void
.end method

.method public close()V
    .registers 1

    .line 129
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "id"    # I

    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 153
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1a

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 157
    const/4 v3, 0x1

    return v3

    .line 155
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 161
    .end local v2    # "i":I
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public performIdentifierAction(II)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v0

    .line 191
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 192
    const/4 v1, 0x0

    return v1

    .line 195
    :cond_8
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    .line 200
    .local v0, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    if-nez v0, :cond_8

    .line 201
    const/4 v1, 0x0

    return v1

    .line 204
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    return v1
.end method

.method public removeGroup(I)V
    .registers 6
    .param p1, "groupId"    # I

    .line 208
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 209
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .line 211
    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1e

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1b

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 216
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 219
    :cond_1e
    return-void
.end method

.method public removeItem(I)V
    .registers 4
    .param p1, "id"    # I

    .line 222
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 9
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 228
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1e

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 232
    .local v3, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1b

    .line 233
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 234
    invoke-virtual {v3, p3}, Lcom/android/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;

    .line 230
    .end local v3    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 237
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 241
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 243
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 245
    .local v3, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 246
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 243
    .end local v3    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 249
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 252
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 253
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 257
    .local v3, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 258
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    .end local v3    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 261
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2
    .param p1, "isQwerty"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 265
    return-void
.end method

.method public size()I
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
