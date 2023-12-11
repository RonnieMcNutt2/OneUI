.class public Landroid/widget/RemoteViewsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsListAdapter.java"


# instance fields
.field private mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private mContext:Landroid/content/Context;

.field private mRemoteViewsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field private mViewTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/widget/RemoteViews$ColorResources;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "viewTypeCount"    # I
    .param p4, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;I",
            "Landroid/widget/RemoteViews$ColorResources;",
            ")V"
        }
    .end annotation

    .line 37
    .local p2, "remoteViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    .line 40
    iput p3, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    .line 41
    iput-object p4, p0, Landroid/widget/RemoteViewsListAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 42
    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .registers 5

    .line 52
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 54
    :cond_5
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 56
    .local v1, "rv":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 57
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "rv":Landroid/widget/RemoteViews;
    :cond_39
    goto :goto_10

    .line 61
    :cond_3a
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    if-gt v0, v1, :cond_48

    const/4 v0, 0x1

    if-lt v1, v0, :cond_48

    .line 65
    return-void

    .line 62
    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid view type count -- view type count must be >= 1and must be as large as the total number of distinct view types"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 72
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .line 107
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1d

    .line 108
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    .line 109
    .local v0, "layoutId":I
    iget-object v1, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 111
    .end local v0    # "layoutId":I
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_38

    .line 89
    iget-object v0, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 90
    .local v0, "rv":Landroid/widget/RemoteViews;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V

    .line 92
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-ne v1, v2, :cond_2b

    .line 93
    move-object v3, p2

    .line 94
    .local v3, "v":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/RemoteViewsListAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    move-object v1, v3

    goto :goto_37

    .line 96
    .end local v3    # "v":Landroid/view/View;
    :cond_2b
    iget-object v2, p0, Landroid/widget/RemoteViewsListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/RemoteViewsListAdapter;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v1, v0

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "v":Landroid/view/View;
    :goto_37
    return-object v1

    .line 101
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local v1    # "v":Landroid/view/View;
    :cond_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/widget/RemoteViewsListAdapter;->mViewTypeCount:I

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public setViewsList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "remoteViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/RemoteViews;>;"
    iput-object p1, p0, Landroid/widget/RemoteViewsListAdapter;->mRemoteViewsList:Ljava/util/ArrayList;

    .line 47
    invoke-direct {p0}, Landroid/widget/RemoteViewsListAdapter;->init()V

    .line 48
    invoke-virtual {p0}, Landroid/widget/RemoteViewsListAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
