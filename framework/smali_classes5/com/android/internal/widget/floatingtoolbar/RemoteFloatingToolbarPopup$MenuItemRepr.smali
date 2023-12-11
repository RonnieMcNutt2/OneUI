.class final Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;
.super Ljava/lang/Object;
.source "RemoteFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MenuItemRepr"
.end annotation


# instance fields
.field public final mGroupId:I

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mItemId:I

.field public final mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "itemId"    # I
    .param p2, "groupId"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput p1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    .line 508
    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    .line 509
    if-nez p3, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    .line 510
    iput-object p4, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 511
    return-void
.end method

.method public static of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;
    .registers 6
    .param p0, "menuItem"    # Landroid/view/MenuItem;

    .line 517
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    .line 518
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 519
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 520
    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 521
    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;-><init>(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 517
    return-object v0
.end method

.method public static reprEquals(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    .line 557
    .local p0, "menuItems1":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/MenuItem;>;"
    .local p1, "menuItems2":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/MenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 558
    return v2

    .line 561
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 562
    .local v0, "menuItems2Iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/MenuItem;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 563
    .local v3, "menuItem1":Landroid/view/MenuItem;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 564
    .local v4, "menuItem2":Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    move-result-object v5

    .line 565
    invoke-static {v4}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->of(Landroid/view/MenuItem;)Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    move-result-object v6

    .line 564
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 566
    return v2

    .line 568
    .end local v3    # "menuItem1":Landroid/view/MenuItem;
    .end local v4    # "menuItem2":Landroid/view/MenuItem;
    :cond_35
    goto :goto_14

    .line 569
    :cond_36
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 537
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 538
    return v0

    .line 540
    :cond_4
    instance-of v1, p1, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$MenuItemRepr;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 541
    return v2

    .line 543
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;

    .line 544
    .local v1, "other":Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;
    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    iget v4, v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    if-ne v3, v4, :cond_2e

    iget v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    iget v4, v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    if-ne v3, v4, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    .line 546
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 549
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v2

    .line 544
    :goto_2f
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 529
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mItemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mGroupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/RemoteFloatingToolbarPopup$MenuItemRepr;->mIcon:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
