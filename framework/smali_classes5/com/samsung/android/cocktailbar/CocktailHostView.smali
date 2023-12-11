.class public Lcom/samsung/android/cocktailbar/CocktailHostView;
.super Landroid/widget/FrameLayout;
.source "CocktailHostView.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CocktailHostView"


# instance fields
.field private mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

.field private mCocktailId:I

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mUser:Landroid/os/UserHandle;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/CocktailHostView;->setIsRootNamespace(Z)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/samsung/android/cocktailbar/CocktailHostView;->setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getCocktail()Lcom/samsung/android/cocktailbar/Cocktail;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    return-object v0
.end method

.method public getCocktailId()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    return v0
.end method

.method public setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    .line 86
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    .line 87
    if-eqz p1, :cond_d

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    .line 90
    :cond_d
    return-void
.end method

.method public setUserId(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 64
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mUser:Landroid/os/UserHandle;

    .line 65
    return-void
.end method

.method public viewDataChanged(I)V
    .registers 6
    .param p1, "viewId"    # I

    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2a

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_2a

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    .line 103
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 104
    .local v2, "adapter":Landroid/widget/Adapter;
    instance-of v3, v2, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1c

    .line 105
    move-object v3, v2

    check-cast v3, Landroid/widget/BaseAdapter;

    .line 106
    .local v3, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .end local v3    # "baseAdapter":Landroid/widget/BaseAdapter;
    goto :goto_29

    .line 107
    :cond_1c
    if-nez v2, :cond_29

    instance-of v3, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v3, :cond_29

    .line 108
    move-object v3, v1

    check-cast v3, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v3}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_2a

    .line 107
    :cond_29
    :goto_29
    nop

    .line 111
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "adapter":Landroid/widget/Adapter;
    :cond_2a
    :goto_2a
    return-void
.end method
